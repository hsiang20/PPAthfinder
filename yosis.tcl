# Yosys script
read_verilog -sv ./out.sv
prep -top top

wreduce; opt -full; opt_clean -purge

show -format svg -viewer none -prefix out/rtl top