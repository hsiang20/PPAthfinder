# Simple syhthesis script to use FreePDK/45nm libraries
#
file mkdir reports
file mkdir netlist

remove_design -all

define_design_lib design_lib -path "design_lib"

#####################
# Config Variables
#####################
# The clock input signal name.
set CLK  "clk"
# The reset input signal name.
set RST  "rst"

set DRIVER_CELL "INV_X1"
set DR_CELL_OUT "ZN"


#####################
# Path Variables
#####################
set SYN  /cad/synopsys/syn/M-2016.12-SP2/libraries/syn/
set OPENCELL_45 ../lib/


#####################
# Set Design Library
#####################

# OpenCell 45nm Library
set link_library [list NangateOpenCellLibrary.db dw_foundation.sldb]
set target_library [list NangateOpenCellLibrary.db]

#set link_library { * tcbn45gsbwphvtml.db dw_foundation.sldb}
#set target_library "tcbn45gsbwphvtml.db"

set synthetic_library [list  dw_foundation.sldb]
set dw_lib     $SYN
set sym_lib    $OPENCELL_45
set target_lib $OPENCELL_45

set search_path [list ./ ../rtl/  $dw_lib $target_lib $sym_lib ../params/ ]

###################
# Read Design
###################

analyze -library design_lib -format sverilog [glob ${RUNDIR}/rtl/*.v ${RUNDIR}/rtl/*.sv]
elaborate ${DESIGN_TARGET} -architecture verilog -library design_lib
link

##################################
# Design Optimization Constraints
##################################

# create clock
create_clock $CLK -period $CLK_PERIOD

# set output delay and load
set_fanout_load 4 [get_ports "*" -filter {@port_direction == out} ]
set_output_delay [ expr $CLK_PERIOD*3/4 ] -clock $CLK  [get_ports "*" -filter {@port_direction == out} ]
#set_output_delay [ expr $CLK_PERIOD*1/2 ] -clock $CLK halt_RnnnnL

set_wire_load_model -name 1K_hvratio_1_4
set_wire_load_mode top

set_max_fanout 4.0 [get_ports "*" -filter {@port_direction != out} ]

# set input delay on all input ports except 'clk' and 'rst'
set all_inputs_wo_rst_clk [remove_from_collection [remove_from_collection [all_inputs] [get_port $CLK]] [get_port $RST]]
set_input_delay -clock $CLK [ expr $CLK_PERIOD*3/4 ] $all_inputs_wo_rst_clk
set_driving_cell -lib_cell $DRIVER_CELL -pin $DR_CELL_OUT [ get_ports "*" -filter {@port_direction == in} ]

# set no input delay on control ports
set_input_delay -clock $CLK 0 screen_RnnnnS
set_input_delay -clock $CLK 0 subSample_RnnnnU

# set target die area
set_max_area $TARGET_AREA

# set DC don't touch reset network
remove_driving_cell $RST
set_drive 0 $RST
set_dont_touch_network $RST


##########################################
# Synthesize Design (Optimize for Timing)
##########################################
set_optimize_registers true -design ${DESIGN_TARGET}
compile_ultra -retime -timing_high_effort_script
##########################
# Analyze Design 
##########################
redirect "reports/design_report" { report_design }
check_design
redirect "reports/design_check" {check_design }
report_area 
redirect "reports/area_report" { report_area }
report_power
redirect "reports/power_report" { report_power -analysis_effort hi }
report_timing
redirect "reports/timing_report_maxsm" { report_timing -significant_digits 4 }
report_qor
redirect "reports/qor_report" { report_qor }
check_error
redirect "reports/error_checking_report" { check_error }

#Concise Results in a singular file
echo $CLK_PERIOD >> results.txt
sh cat reports/error_checking_report >> results.txt
sh grep -i slack reports/timing_report_maxsm >> results.txt
sh cat reports/power_report | grep Total >> results.txt
sh cat reports/power_report | grep Cell | grep Leakage >> results.txt
sh cat reports/area_report | grep Total | grep cell >> results.txt

exit 
