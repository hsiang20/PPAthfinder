################################################################################
## Setup file for the CS224W PPAthfinder project
################################################################################

echo "Loading environment variables..."

module load base
module load genesis2
module load lc
module load syn
# module load vcs
module load vcs/S-2021.09-SP1
module load dc_shell/S-2021.06-SP5-4

# Loading Tool Env.
module load synopsys_edk #
module load cdesigner # Custom Designer
#module load cni # Pycell for layout Pcell ##### FIX ME! I crashes gcc
module load hercules # Hercules for DRC/LVS/LPE
module load starrc # Star-RCX for LPE
module load cx # Custom Explorer Waveform Viewer
# module load synopsys_pdk # load env for synopsys 90nm PDK (HLS Centos Update)
module load matlab/caddy
module load incisive

### SweRV env
setenv RV_ROOT /home/users/hsiangc/CS224W/PPAthfinder/synthesizer/swerv

### Queue If Licenses Are Unavailable
setenv SNPSLMD_QUEUE true
setenv SNPS_MAX_WAITTIME 7200
setenv SNPS_MAX_QUEUETIME 7200

### env for AHA tools
setenv PATH /usr/bin:/cad/aha/brew/bin:/cad/aha/bin:/cad/aha/verific/yosys:$PATH
source /cad/aha/venv/bin/activate.csh
setenv LD_LIBRARY_PATH /cad/aha/venv/lib:/cad/aha/venv/coreir/lib:$LD_LIBRARY_PATH

setenv VERIFIC_LICENSE_FILE /cad/aha/verific_200817.license

setenv VERDI_HOME /cad/synopsys/verdi/L-2016.06-SP1-1/

setenv MGLS_LICENSE_FILE 1717@cadlic0.stanford.edu
setenv PATH /cad/mentor/2019.11/Catapult_Synthesis_10.4b-841621/Mgc_home/bin/:$PATH

# yosys update 2023
setenv PATH /cad/tabby/bin:$PATH
setenv YOSYSHQ_LICENSE /cad/tabby/license/tabbycad-Stanford.lic

### some helpful alias to make your life better
alias dve 'dve -full64'

if ( -f /usr/bin/gcc-4.4 ) then
setenv J_CC gcc-4.4
else
setenv J_CC gcc
endif

if ( -f /hd/cad/modules/tcl/init/csh ) then
source /hd/cad/modules/tcl/init/csh
endif

module load jaspergold

echo "Environment setup finished."
