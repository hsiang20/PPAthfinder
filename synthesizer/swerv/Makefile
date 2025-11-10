################################################################################
################ Makefile Definitions
################################################################################
# This little trick finds where the makefile exists
DESIGN_HOME := $(realpath $(dir $(word $(words $(MAKEFILE_LIST)), $(MAKEFILE_LIST))))
# $(warning WARNING: home set to $(DESIGN_HOME)) 

# RUNDIR is where we are actually running
RUNDIR := $(realpath ./)
# $(warning WARNING: RUNDIR set to $(RUNDIR)) 

# this line enables a local Makefile to override values of the main makefile
-include Makefile.local

RTL_FILES := design/flist.vlog
DESIGN_NAME := swerv_wrapper

ifndef DESIGN_NAME
  DESIGN_NAME:=rast
  $(warning WARNING: Running with default design.  DESIGN_NAME=$(DESIGN_NAME))
endif

ifeq ($(DESIGN_NAME), rast)
  TOP_MODULE ?= top_rast
endif

ifeq ($(DESIGN_NAME), swerv_wrapper)
  TOP_MODULE ?= swerv_wrapper
  includes = -I${RV_ROOT}/design/include -I${RV_ROOT}/design/lib -I${RV_ROOT}/design/dmi -I${RV_ROOT}/configs/snapshots/default/
endif

############### For Verilog ################
############################################

##### FLAGS FOR SYNOPSYS COMPILATION ####
EXECUTABLE := $(RUNDIR)/simv

VERILOG_LIBS := 	-y $(RUNDIR) +incdir+$(RUNDIR)			\
					-y /afs/ir.stanford.edu/class/ee/synopsys/syn/M-2016.12-SP2/dw/sim_ver/		\
					+incdir+/afs/ir.stanford.edu/class/ee/synopsys/syn/M-2016.12-SP2/dw/sim_ver/	 \
					-y $(SYNOPSYS)/packages/gtech/src_ver/	\
					+incdir+$(SYNOPSYS)/packages/gtech/src_ver/ \


# "-sverilog" enables system verilog
# "+lint=PCWM" enables linting error messages
# "+libext+.v" specifies that library files (imported by the "-y" directive) ends with ".v"
# "-notice" used to get details when ports are coerced to inout
# "-full64" for 64 bit compilation and simulation
# "+v2k" for verilog 2001 constructs such as generate
# "-timescale=1ns/1ns" sets the time unit and time precision for the entire design
# "+noportcoerce" compile-time option to shut off the port coercion for the entire design
# "-top topModuleName" specifies the top module
# "-f verilogFiles.list" specifies a file that contains list of verilog files to compile

VERILOG_COMPILE_FLAGS :=	-sverilog 					\
				+cli 						\
				-debug_access+all			\
				+libext+.v					\
				-full64						\
				+v2k						\
				-debug_pp					\
				-timescale=1ns/1ns				\
				+noportcoerce         				\
				-ld $(VCS_CC) -debug_pp				\
				-top $(TOP_MODULE)				\
				-f $(RTL_FILES)					\
				$(VERILOG_LIBS)


VERILOG_SIMULATION_FLAGS := 	$(VERILOG_SIMULATION_FLAGS) 			\
				-l $(EXECUTABLE).log				\
		
##### END OF FLAGS FOR SYNOPSYS COMPILATION ####

############ For Design Compiler ###########
############################################
DESIGN_TARGET = $(DESIGN_NAME)

# The target clock period and area in library units (nS) (um^2). 45 
CLK_PERIOD=10000; 

# flags for dc/icc
SYNTH_HOME	= $(DESIGN_HOME)/synth
SYNTH_RUNDIR	= $(RUNDIR)/synth
SYNTH_LOGS	= $(SYNTH_RUNDIR)
DC_LOG	= $(SYNTH_LOGS)/dc.log

SET_SYNTH_PARAMS = 	set DESIGN_HOME $(DESIGN_HOME); 	\
			set RUNDIR $(RUNDIR); 			\
			set DESIGN_TARGET $(DESIGN_TARGET); 	\
			set CLK_PERIOD  $(CLK_PERIOD); 				\

DC_COMMAND_STRING = "$(SET_SYNTH_PARAMS) source -echo -verbose $(SYNTH_HOME)/dc.tcl"


################################################################################
################ Makefile Rules
################################################################################
#default rule: 
all: $(EXECUTABLE)


# Simulation rules:
#####################
# use "make run RUN=+<runtime_flag[=value]>" to add runtime flags
.PHONY: run 

run: $(EXECUTABLE)
	@echo ""
	@echo Now Running $(EXECUTABLE)
	@echo ==================================================
	mkdir -p sb_log mon_log
	$(EXECUTABLE) $(VERILOG_SIMULATION_FLAGS) $(RUN) 3>&1 | tee run_bb.log
	

# DC & ICC Run rules:
############################
# DC Run
#######################
.PHONY: run_dc

run_dc: $(DC_LOG)

$(DC_LOG): $(SYNTH_HOME)/dc.tcl
	@echo ""
	@echo Now Running DC SHELL: Making $@ because of $?
	@echo =============================================
	@sleep 1;
	@if test ! -d "$(SYNTH_LOGS)"; then 					\
		mkdir -p $(SYNTH_LOGS);						\
	fi
	cd $(SYNTH_RUNDIR); dc_shell-t -64bit -x $(DC_COMMAND_STRING) 2>&1 | tee -i $(DC_LOG)



# Cleanup rules:
#####################
.PHONY: clean_dc clean_reports clean cleanall 

clean_dc:
	@echo ""
	@echo Removing previous DC run log
	@echo =============================================
	\rm -f $(DC_LOG)

clean_reports:
	@echo ""
	@echo Removing previous DC reports
	@echo =============================================
	rm -fr $(SYNTH_RUNDIR)/reports
	rm -fr $(SYNTH_RUNDIR)/results.txt	
	cd $(SYNTH_RUNDIR); rm -fr alib-52 command.log default.svf netlist/

clean: clean_dc 
	@echo ""
	@echo Cleanning old files, bineries and garbage
	@echo ==================================================
	\rm -f $(EXECUTABLE) 
	\rm -rf $(EXECUTABLE).*


cleanall: clean clean_reports
	@echo ""
	@echo Cleanning old logs, images and waveforms
	@echo ==================================================
	\rm -rf *.vpd
	\rm -f *.log
	\rm -f *.ppm
