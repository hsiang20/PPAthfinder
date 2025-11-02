#!/bin/bash

# ====================================================================
# Bash Script to generate and run all SWERV design configurations
#
# This script performs a full cross-product sweep of all defined
# configuration parameters, calling the core config tool for each one.
# ====================================================================

# --- 1. Define all possible values for each parameter (as Bash arrays) ---

# Core configuration command location
CONFIG_COMMAND="${RV_ROOT}/configs/swerv.config"

# Arrays for options
targets=(default magellan)
btb_sizes=(32 48 64)
dccm_sizes=(4 8 16 32 48 64)
iccm_sizes=(4 8 16 32 64)
icache_sizes=(16 32 64)
icache_eccs=(0 1)
pic_2cycles=(0 1)
pic_sizes=(32)

# --- 2. Configuration Loop Structure ---

config_count=0
echo "Starting Configuration Sweep (Total possible runs: 161,280)"
echo "------------------------------------------------------------"

# Loop through all possible combinations
for target in "${targets[@]}"; do
    for btb_size in "${btb_sizes[@]}"; do
        for dccm_size in "${dccm_sizes[@]}"; do
            for icache_ecc in "${icache_eccs[@]}"; do
                for iccm_size in "${iccm_sizes[@]}"; do
                    for icache_size in "${icache_sizes[@]}"; do
                        for pic_2cycle in "${pic_2cycles[@]}"; do
                            for pic_size in "${pic_sizes[@]}"; do

                                # 3. Generate a MEANINGFUL snapshot name
                                # Format: TGT_<target>_BTB<size>_DCCM<size>_IEM<ecc>_ICCM<size>_ICS<size>_P2C<cycle>_PS<size>
                                snapshot_name="TGT_${target}_BTB${btb_size}_DCCM${dccm_size}_IEM${icache_ecc}_ICCM${iccm_size}_ICS${icache_size}_P2C${pic_2cycle}_PS${pic_size}"
                                
                                # Increment counter
                                config_count=$((config_count + 1))

                                # 4. Construct and execute the full command
                                FULL_COMMAND="\
                                    ${CONFIG_COMMAND} \
                                    -snapshot=${snapshot_name} \
                                    -target=${target} \
                                    -btb_size=${btb_size} \
                                    -dccm_size=${dccm_size} \
                                    -icache_ecc=${icache_ecc} \
                                    -iccm_size=${iccm_size} \
                                    -icache_size=${icache_size} \
                                    -pic_2cycle=${pic_2cycle} \
                                    -pic_size=${pic_size}"
                                
                                # --- EXECUTION ---
                                echo ""
                                echo "--- RUN #$config_count ---"
                                echo "Snapshot: $snapshot_name"
                                echo "Executing: $FULL_COMMAND"
                                
                                # Execute the command (assuming the config tool is executable)
                                # The 'eval' from Tcl is replaced with direct command execution here
                                $FULL_COMMAND

                                # Check the exit status of the configuration tool
                                if [ $? -ne 0 ]; then
                                    echo "ERROR: Configuration run for $snapshot_name failed (Exit Code: $?). Aborting sweep."
                                    exit 1
                                fi

                            done
                        done
                    done
                done
            done
        done
    done
done

echo ""
echo "------------------------------------------------------------"
echo "COMPLETED: All $config_count configurations have been executed."
echo "------------------------------------------------------------"
