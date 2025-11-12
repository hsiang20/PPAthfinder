"""
Convert Yosys netlist JSON to PyTorch Geometric graph representation.

This script parses a Yosys-generated netlist JSON file and converts it into
a PyTorch Geometric Data object, with visualization capabilities.
"""

import json
import os
import subprocess
from collections import defaultdict
from typing import Dict, List, Tuple, Any

import torch
import networkx as nx
import matplotlib.pyplot as plt
from torch_geometric.data import Data
from torch_geometric.utils import to_networkx


# ============================================================================
# Constants and Configuration
# ============================================================================

# Supported operation types (extend as needed for $slice, $concat, etc.)
OP_TYPES = ["INPUT", "OUTPUT", "CONST", "$add", "$and", "$or", "UNKNOWN"]
OP_INDEX = {op_type: i for i, op_type in enumerate(OP_TYPES)}

# Color scheme for visualization
COLOR_MAP = {
    "INPUT": "#90EE90",    # light green
    "OUTPUT": "#FFB6C1",   # light pink
    "CONST": "#FFD700",    # gold
    "$add": "#87CEEB",     # sky blue
    "$and": "#FFA500",     # orange
    "$or": "#66CDAA",      # medium aquamarine
    "UNKNOWN": "#D3D3D3",  # light gray
}

# Paths
TOP_MODULE = "rtl/top.sv"
NETLIST_PATH = "./out/netlist.json"
OUTPUT_PATH = "./out/circuit_graph.png"

# Yosys synthesis script
YOSYS_SCRIPT = """
read_verilog -sv {sv_file}
hierarchy -check -top top

# Run synthesis (technology-independent optimization and mapping)
wreduce; opt -full; opt_clean -purge

# Write the synthesized netlist as JSON for PyG conversion
write_json {output_dir}/netlist.json
"""


# ============================================================================
# Synthesis Functions
# ============================================================================

def synthesize_with_yosys(sv_file: str, output_dir: str = "out") -> None:
    """
    Synthesize the SystemVerilog file using Yosys and generate netlist JSON.

    Args:
        sv_file: Path to the SystemVerilog file
        output_dir: Directory to save synthesis outputs
    """
    print(f"Synthesizing {sv_file} with Yosys...")

    # Create output directory
    os.makedirs(output_dir, exist_ok=True)

    # Write Yosys script to temporary file
    script_file = "synth_script.ys"
    with open(script_file, 'w', encoding='utf-8') as f:
        f.write(YOSYS_SCRIPT.format(sv_file=sv_file, output_dir=output_dir))

    # Run Yosys
    try:
        result = subprocess.run(
            ['yosys', '-s', script_file],
            capture_output=True,
            text=True,
            check=True
        )
        print("✓ Yosys synthesis completed successfully")
        print(result.stdout)
    except subprocess.CalledProcessError as e:
        print(f"✗ Error running Yosys: {e}")
        print(f"stdout: {e.stdout}")
        print(f"stderr: {e.stderr}")
        raise
    finally:
        # Clean up script file
        if os.path.exists(script_file):
            os.remove(script_file)


# ============================================================================
# Helper Functions
# ============================================================================

def bits_list(signal: List) -> List[Tuple[str, Any]]:
    """
    Convert Yosys signal bits to typed list.

    Yosys JSON uses ints for net bits and strings like "1", "0" for constants.

    Args:
        signal: List of bits from Yosys JSON

    Returns:
        List of (type, value) tuples where type is "net" or "lit"
    """
    result = []
    for bit in signal:
        if isinstance(bit, int):
            result.append(("net", bit))
        else:  # literal like "1" or "0"
            result.append(("lit", bit))
    return result


def load_netlist(path: str) -> Tuple[Dict, Dict]:
    """
    Load and parse the Yosys netlist JSON file.

    Args:
        path: Path to the netlist JSON file

    Returns:
        Tuple of (module dict, net_bits dict)
    """
    print(f"Loading netlist from {path}...")
    with open(path, "r", encoding="utf-8") as f:
        netlist_json = json.load(f)

    module = netlist_json["modules"]["top"]
    net_bits = {n: tuple(v["bits"]) for n, v in module["netnames"].items()}

    return module, net_bits


def build_node_inventory(
    module: Dict,
    nodes: List[Tuple[str, str]],
    name2idx: Dict[str, int]
) -> None:
    """
    Build inventory of nodes from ports and cells.

    Args:
        module: Module dictionary from netlist
        nodes: List to store (name, type) tuples
        name2idx: Dictionary mapping node names to indices
    """
    print("Building node inventory...")

    def add_node(name: str, op_type: str) -> int:
        """Add a node to the graph (idempotent)."""
        if name in name2idx:
            return name2idx[name]

        idx = len(nodes)
        nodes.append((name, op_type))
        name2idx[name] = idx
        return idx

    # Add port nodes
    for port_name, port_info in module["ports"].items():
        node_type = "INPUT" if port_info["direction"] == "input" else "OUTPUT"
        add_node(port_name, node_type)

    # Add cell nodes
    for cell_name, cell_info in module["cells"].items():
        add_node(cell_name, cell_info["type"])


def build_connectivity_graph(
    module: Dict,
    net_bits: Dict,
    nodes: List[Tuple[str, str]],
    name2idx: Dict[str, int]
) -> set:
    """
    Build connectivity graph by analyzing drivers and sinks.

    Args:
        module: Module dictionary from netlist
        net_bits: Dictionary of net bits
        nodes: List of (name, type) tuples
        name2idx: Dictionary mapping node names to indices

    Returns:
        Set of (src_idx, dst_idx) edges
    """
    print("Building connectivity graph...")

    const2idx: Dict[str, int] = {}

    def add_node(name: str, op_type: str) -> int:
        """Add a node to the graph (idempotent)."""
        if name in name2idx:
            return name2idx[name]

        idx = len(nodes)
        nodes.append((name, op_type))
        name2idx[name] = idx
        return idx

    def const_node(literal: str) -> int:
        """Get or create a constant node for the given literal."""
        if literal not in const2idx:
            const2idx[literal] = add_node(f"CONST_{literal}", "CONST")
        return const2idx[literal]

    # Collect drivers and sinks per net bit
    drivers = defaultdict(list)  # bit -> [node_idx]
    sinks = defaultdict(list)    # bit -> [node_idx]
    edges = set()                # (src_idx, dst_idx)

    # 1) Ports drive/consume their nets
    for port_name, port_info in module["ports"].items():
        port_idx = name2idx[port_name]
        if port_name not in net_bits:  # defensive check
            continue

        for net_bit in net_bits[port_name]:
            if port_info["direction"] == "input":
                drivers[net_bit].append(port_idx)
            else:
                sinks[net_bit].append(port_idx)

    # 2) Cells: classify pins by direction to find drivers/sinks
    for cell_name, cell_info in module["cells"].items():
        cell_idx = name2idx[cell_name]
        port_directions = cell_info.get("port_directions", {})

        for pin_name, connection in cell_info["connections"].items():
            pin_direction = port_directions.get(pin_name, "input")

            for bit_kind, bit_value in bits_list(connection):
                if bit_kind == "lit":
                    # Literal constant: add direct edge CONST -> cell
                    const_idx = const_node(bit_value)
                    edges.add((const_idx, cell_idx))
                else:
                    # Network bit: register as driver or sink
                    if pin_direction == "output":
                        drivers[bit_value].append(cell_idx)
                    else:
                        sinks[bit_value].append(cell_idx)

    # 3) Stitch nets: connect all drivers to all sinks for each bit
    all_bits = set(list(drivers.keys()) + list(sinks.keys()))
    for net_bit in all_bits:
        for driver_idx in drivers[net_bit]:
            for sink_idx in sinks[net_bit]:
                edges.add((driver_idx, sink_idx))

    return edges


def build_pyg_data(nodes: List[Tuple[str, str]], edges: set) -> Data:
    """
    Build PyTorch Geometric Data object from nodes and edges.

    Args:
        nodes: List of (name, type) tuples
        edges: Set of (src_idx, dst_idx) edges

    Returns:
        PyTorch Geometric Data object
    """
    print("Building PyG data object...")

    # Create node feature matrix (one-hot encoding by operation type)
    num_nodes = len(nodes)
    num_features = len(OP_TYPES)
    x = torch.zeros((num_nodes, num_features), dtype=torch.float)

    # Track unknown types for reporting
    unknown_types = set()

    for i, (_, node_type) in enumerate(nodes):
        # Handle unknown types by mapping to "UNKNOWN"
        if node_type not in OP_INDEX:
            unknown_types.add(node_type)
            node_type = "UNKNOWN"
        x[i, OP_INDEX[node_type]] = 1.0

    # Report unknown types if any
    if unknown_types:
        print(
            f"Warning: Found {
                len(unknown_types)} unknown cell type(s): {
                sorted(unknown_types)}")
        print("These have been mapped to 'UNKNOWN' type.")

    # Create edge index tensor
    edge_index = torch.tensor(list(edges), dtype=torch.long).t().contiguous()

    # Create PyG Data object
    return Data(x=x, edge_index=edge_index)


def print_summary(nodes: List[Tuple[str, str]],
                  edges: set, data: Data) -> None:
    """
    Print summary of the generated graph.

    Args:
        nodes: List of (name, type) tuples
        edges: Set of edges
        data: PyTorch Geometric Data object
    """
    print("\n" + "=" * 60)
    print("GRAPH SUMMARY")
    print("=" * 60)
    print(f"Number of nodes: {len(nodes)}")
    print(f"Number of edges: {len(edges)}")
    print(f"Number of features per node: {len(OP_TYPES)}")
    print("\nNodes (index, name, type):")
    for i, (node_name, node_type) in enumerate(nodes):
        print(f"  {i:2d}: {node_name:>16s}  {node_type}")
    print(f"\nEdge index shape: {data.edge_index.shape}")
    print(f"Data: {data}")
    print("=" * 60 + "\n")


def compute_hierarchical_layout(graph: nx.DiGraph) -> Dict:
    """
    Compute hierarchical layout for DAG based on topological levels.

    Args:
        graph: NetworkX directed graph

    Returns:
        Dictionary mapping node indices to (x, y) positions
    """
    # Compute topological sort to determine levels
    try:
        # Get the longest path to each node (level in hierarchy)
        levels = {}
        for node in nx.topological_sort(graph):
            # Level is 0 if no predecessors, else max(predecessor levels) + 1
            predecessors = list(graph.predecessors(node))
            if not predecessors:
                levels[node] = 0
            else:
                levels[node] = max(levels[pred] for pred in predecessors) + 1

        # Group nodes by level
        levels_dict = defaultdict(list)
        for node, level in levels.items():
            levels_dict[level].append(node)

        # Assign positions: x = level (left to right), y = vertical spacing
        pos = {}

        for level, nodes_at_level in levels_dict.items():
            # Center nodes at this level vertically
            num_nodes = len(nodes_at_level)
            for i, node in enumerate(sorted(nodes_at_level)):
                # x: level from left to right (horizontal flow)
                x = level * 3
                # y: spread out vertically, centered
                y = (i - (num_nodes - 1) / 2) * 2
                pos[node] = (x, y)

        return pos

    except nx.NetworkXError:
        # If not a DAG (has cycles), fall back to spring layout
        print("Warning: Graph has cycles, using spring layout instead")
        return nx.spring_layout(graph, k=2, iterations=50, seed=42)


def visualize_graph(nodes: List[Tuple[str, str]],
                    data: Data, output_path: str) -> None:
    """
    Create and save visualization of the circuit graph.

    Args:
        nodes: List of (name, type) tuples
        data: PyTorch Geometric Data object
        output_path: Path to save the visualization
    """
    print("Generating graph visualization...")

    # Convert PyG data to NetworkX graph
    graph = to_networkx(data, to_undirected=False)

    graph_to_draw = graph

    # Create node labels with names and types
    labels = {i: f"{name}\n({node_type})" for i,
              (name, node_type) in enumerate(nodes)}

    # Map node colors based on type
    node_colors = [COLOR_MAP.get(node_type, "#D3D3D3")
                   for _, node_type in nodes]

    # Create figure with larger size for better readability
    _, ax = plt.subplots(figsize=(10, 6))

    # Use hierarchical layout for DAG (shows clear flow from inputs to outputs)
    # pos = compute_hierarchical_layout(graph_to_draw)
    pos = nx.kamada_kawai_layout(graph_to_draw)


    # Draw nodes
    nx.draw_networkx_nodes(
        graph_to_draw,
        pos,
        node_color=node_colors,
        node_size=3000,
        alpha=0.9,
        ax=ax
    )

    # Draw edges with curves to avoid overlaps
    nx.draw_networkx_edges(
        graph_to_draw,
        pos,
        edge_color="gray",
        width=2,
        arrows=True,
        arrowsize=20,
        arrowstyle="->",
        alpha=0.7,
        ax=ax,
        connectionstyle="arc3,rad=0.1",
        node_size=3000,
        min_source_margin=15,
        min_target_margin=15
    )

    # Draw labels
    nx.draw_networkx_labels(
        graph_to_draw,
        pos,
        labels,
        font_size=9,
        font_weight="bold",
        ax=ax
    )

    # Add a legend for node types
    legend_elements = [
        plt.Line2D(
            [0], [0],
            marker="o",
            color="w",
            markerfacecolor=color,
            markersize=10,
            label=op_type
        )
        for op_type, color in COLOR_MAP.items()
    ]
    ax.legend(handles=legend_elements, fontsize=10)

    ax.set_title("Circuit Graph - Hierarchical Layout",
                 fontsize=16, fontweight="bold")
    ax.axis("off")
    plt.tight_layout()

    # Save the figure
    plt.savefig(output_path, dpi=200, bbox_inches="tight")
    print(f"Graph visualization saved to: {output_path}")

    # Display the graph (optional - comment out if running headless)
    plt.show()


def main() -> None:
    """Main function to synthesize design and convert netlist to PyG graph."""
    print("\n" + "=" * 60)
    print("STEP 1: YOSYS SYNTHESIS")
    print("=" * 60)

    # Step 1: Run Yosys synthesis
    output_dir = os.path.dirname(NETLIST_PATH) or "out"
    synthesize_with_yosys(TOP_MODULE, output_dir)

    print("\n" + "=" * 60)
    print("STEP 2: CONVERT TO PYTORCH GEOMETRIC GRAPH")
    print("=" * 60)

    # Initialize data structures
    nodes: List[Tuple[str, str]] = []
    name2idx: Dict[str, int] = {}

    # Load synthesized netlist
    module, net_bits = load_netlist(NETLIST_PATH)

    # Build node inventory
    build_node_inventory(module, nodes, name2idx)

    # Build connectivity graph
    edges = build_connectivity_graph(module, net_bits, nodes, name2idx)

    # Build PyG data object
    data = build_pyg_data(nodes, edges)

    # Print summary
    print_summary(nodes, edges, data)

    # Visualize graph
    visualize_graph(nodes, data, OUTPUT_PATH)

    print("\nDone!")


if __name__ == "__main__":
    main()
