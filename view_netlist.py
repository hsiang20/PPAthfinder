"""
View the netlist of a SystemVerilog file using Yosys
"""
import subprocess
import os


YOSYS_SCRIPT="""
read_verilog -sv {sv_file}
prep -top top

wreduce; opt -full; opt_clean -purge

show -format svg -viewer none -prefix {output_dir}/rtl top
"""


def synthesize_with_yosys(sv_file: str, output_dir: str = "out"):
    """
    Synthesize the SystemVerilog file using Yosys and view the netlist
    """
    # Write script to temporary file
    script_file = "synth_script.ys"
    os.makedirs(output_dir, exist_ok=True)
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
        print("Yosys synthesis completed successfully")
        print(result.stdout)
    except subprocess.CalledProcessError as e:
        print(f"Error running Yosys: {e}")
        print(f"stdout: {e.stdout}")
        print(f"stderr: {e.stderr}")
        raise
    finally:
        # Clean up script file
        if os.path.exists(script_file):
            os.remove(script_file)


if __name__ == "__main__":
    synthesize_with_yosys("rtl/top.sv")