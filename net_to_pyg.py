"""
Convert the netlist to a PyG graph
"""
# pyg_from_yosys.py
import json
from collections import defaultdict
import torch
import networkx as nx
import matplotlib.pyplot as plt
from torch_geometric.data import Data
from torch_geometric.utils import to_networkx

# ---- load yosys json ----
with open("./out/netlist.json", "r", encoding="utf-8") as f:
    j = json.load(f)
mod = j["modules"]["top"]

# ---- node inventory ----
# one-hot types (extend if you see more ops like $slice, $concat, etc.)
OP_TYPES = ["INPUT", "OUTPUT", "CONST", "$add"]
op_index = {t: i for i, t in enumerate(OP_TYPES)}

nodes = []                # [(name, type)]
name2idx = {}

def add_node(name, op_type):
    """
    Add a node to the graph
    """
    if name in name2idx:  # idempotent
        return name2idx[name]
    idx = len(nodes)
    nodes.append((name, op_type))
    name2idx[name] = idx
    return idx

# ports as nodes
for pname, p in mod["ports"].items():
    t = "INPUT" if p["direction"] == "input" else "OUTPUT"
    add_node(pname, t)

# cells as nodes
for cname, c in mod["cells"].items():
    add_node(cname, c["type"])

# constants: one node per unique literal (e.g., "1", "0")
const2idx = {}
def const_node(lit):
    if lit not in const2idx:
        const2idx[lit] = add_node(f"CONST_{lit}", "CONST")
    return const2idx[lit]

# ---- bit helpers ----
# Ports' bit lists live in netnames with the same key as the port name
net_bits = {n: tuple(v["bits"]) for n, v in mod["netnames"].items()}

def bits_list(sig):
    # Yosys JSON uses ints for net bits; strings like "1","0" for constants
    out = []
    for b in sig:
        if isinstance(b, int):
            out.append(("net", b))
        else:  # literal like "1"
            out.append(("lit", b))
    return out

# ---- connectivity: collect drivers and sinks per net bit ----
drivers = defaultdict(list)  # bit -> [node_idx]
sinks   = defaultdict(list)  # bit -> [node_idx]
edges   = set()              # (src_idx, dst_idx) for constants or direct connections

# 1) ports drive/consume their nets
for pname, p in mod["ports"].items():
    pidx = name2idx[pname]
    if pname not in net_bits:  # defensive
        continue
    for b in net_bits[pname]:
        if p["direction"] == "input":
            drivers[b].append(pidx)
        else:
            sinks[b].append(pidx)

# 2) cells: classify pins by direction to find drivers/sinks
for cname, c in mod["cells"].items():
    nidx = name2idx[cname]
    pd = c.get("port_directions", {})
    for pin, conn in c["connections"].items():
        pin_dir = pd.get(pin, "input")
        for kind, b in bits_list(conn):
            if kind == "lit":
                # literal: add direct edge CONST -> this cell (as a sink)
                src = const_node(b)
                edges.add((src, nidx))
            else:
                if pin_dir == "output":
                    drivers[b].append(nidx)
                else:
                    sinks[b].append(nidx)

# 3) stitch nets: for each bit, connect all drivers to all sinks
for b in set(list(drivers.keys()) + list(sinks.keys())):
    for d in drivers[b]:
        for s in sinks[b]:
            edges.add((d, s))

# ---- build PyG tensors ----
# x: one-hot by op type
x = torch.zeros((len(nodes), len(OP_TYPES)), dtype=torch.float)
for i, (_, t) in enumerate(nodes):
    x[i, op_index[t]] = 1.0

edge_index = torch.tensor(list(edges), dtype=torch.long).t().contiguous()
data = Data(x=x, edge_index=edge_index)

# ---- demo printout ----
print("Nodes (index, name, type):")
for i, (n, t) in enumerate(nodes):
    print(f"{i:2d}: {n:>16s}  {t}")
print("\nedge_index:\n", edge_index)
print("\nData:", data)

# ---- visualization ----
print("\nGenerating graph visualization...")

# Convert PyG data to NetworkX graph
G = to_networkx(data, to_undirected=False)

# Create node labels with names and types
labels = {i: f"{n}\n({t})" for i, (n, t) in enumerate(nodes)}

# Define colors for different node types
color_map = {
    "INPUT": "#90EE90",    # light green
    "OUTPUT": "#FFB6C1",   # light pink
    "CONST": "#FFD700",    # gold
    "$add": "#87CEEB",     # sky blue
}
node_colors = [color_map.get(t, "#D3D3D3") for _, t in nodes]

# Create figure with larger size for better readability
plt.figure(figsize=(14, 10))

# Use spring layout for the graph
pos = nx.spring_layout(G, k=2, iterations=50, seed=42)

# Draw the graph
nx.draw(G, pos, 
        labels=labels,
        node_color=node_colors,
        node_size=2000,
        font_size=8,
        font_weight='bold',
        arrows=True,
        arrowsize=15,
        edge_color='gray',
        linewidths=2,
        width=1.5,
        alpha=0.9)

# Add a legend
legend_elements = [plt.Line2D([0], [0], marker='o', color='w', 
                             markerfacecolor=color, markersize=10, label=op_type)
                  for op_type, color in color_map.items()]
plt.legend(handles=legend_elements, loc='upper left', fontsize=10)

plt.title("Circuit Graph Visualization", fontsize=16, fontweight='bold')
plt.axis('off')
plt.tight_layout()

# Save the figure
output_path = "./out/circuit_graph.png"
plt.savefig(output_path, dpi=300, bbox_inches='tight')
print(f"Graph visualization saved to: {output_path}")

# Display the graph (optional - comment out if running headless)
plt.show()
