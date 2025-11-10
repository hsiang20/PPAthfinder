#!/bin/bash

# ====================================================================
# Full Synthesis Sweep Runner
#
# This script executes the synthesis flow (make run_dc) for every
# defined configuration, collects the resulting report files, and 
# ensures a clean workspace after each run.
# ====================================================================

# --- Configuration Variables ---

# Destination folder for storing all collected synthesis reports
RESULTS_DIR="synthesis_results_sweep"

# The relative path within the config directory where synthesis artifacts are located.
# Adjust this if your Makefile target copies files to a different location.
REPORT_SOURCE_DIR="synth/"
REPORT_FILE_NAME="results.txt" # Example report file to copy

# --- 1. Define all possible values for each parameter ---

targets=(default magellan)
btb_sizes=(32 48 64)
dccm_sizes=(4 8 16 32 48 64)
iccm_sizes=(4 8 16 32 64)
icache_sizes=(16 32 64)
icache_eccs=(0 1)
pic_2cycles=(0 1)
pic_sizes=(32)

# --- 2. Setup Result Directory ---

mkdir -p $RESULTS_DIR
if [ $? -ne 0 ]; then
    echo "ERROR: Could not create result directory $RESULTS_DIR. Exiting."
    exit 1
fi
echo "Results will be stored in: $RESULTS_DIR"
echo "------------------------------------------------------------"

# --- 3. Configuration Loop Structure (The Sweep) ---

config_count=0
FAIL_COUNT=0

for target in "${targets[@]}"; do
    for btb_size in "${btb_sizes[@]}"; do
        for dccm_size in "${dccm_sizes[@]}"; do
            for icache_ecc in "${icache_eccs[@]}"; do
                for iccm_size in "${iccm_sizes[@]}"; do
                    for icache_size in "${icache_sizes[@]}"; do
                        for pic_2cycle in "${pic_2cycles[@]}"; do
                            for pic_size in "${pic_sizes[@]}"; do

                                # A. Generate meaningful name
                                snapshot_name="TGT_${target}_BTB${btb_size}_DCCM${dccm_size}_IEM${icache_ecc}_ICCM${iccm_size}_ICS${icache_size}_P2C${pic_2cycle}_PS${pic_size}"
                                config_count=$((config_count + 1))
                                
                                # ------------------------------------------------------------
                                # B. Run the Synthesis for this Configuration
                                # ------------------------------------------------------------
                                echo "--- RUN #$config_count: $snapshot_name ---"
                                
                                # Set environment variables for the Makefile to use
                                # These variables must match what your Makefile expects to set the configuration
                                export CONFIG_SNAPSHOT_NAME=$snapshot_name
                                export CONFIG_TARGET=$target
                                export CONFIG_BTB_SIZE=$btb_size
                                export CONFIG_DCCM_SIZE=$dccm_size
                                export CONFIG_ICACHE_ECC=$icache_ecc
                                export CONFIG_ICCM_SIZE=$iccm_size
                                export CONFIG_ICACHE_SIZE=$icache_size
                                export CONFIG_PIC_2CYCLE=$pic_2cycle
                                export CONFIG_PIC_SIZE=$pic_size
                                
                                # Execute the synthesis make target
                                make run_dc 
                                MAKE_STATUS=$?

                                # C. Check Status and Copy Results
                                if [ $MAKE_STATUS -eq 0 ]; then
                                    echo "Synthesis SUCCESSFUL. Copying results..."

                                    # The new name for the result file
                                    RESULT_DEST_NAME="${snapshot_name}_${REPORT_FILE_NAME}"
                                    
                                    # Copy the expected report file to the results directory
                                    cp "$REPORT_SOURCE_DIR/$REPORT_FILE_NAME" "$RESULTS_DIR/$RESULT_DEST_NAME"
                                    
                                    if [ $? -ne 0 ]; then
                                        echo "WARNING: Failed to copy report file $REPORT_FILE_NAME. Check paths."
                                    else
                                        echo "Report copied to: $RESULTS_DIR/$RESULT_DEST_NAME"
                                    fi
                                else
                                    echo "ERROR: Synthesis FAILED for $snapshot_name (Exit Code: $MAKE_STATUS)."
                                    FAIL_COUNT=$((FAIL_COUNT + 1))
                                    # You can add logic here to copy the log file for failed runs if needed.
                                fi
                                
                                # ------------------------------------------------------------
                                # D. Clean up the workspace
                                # ------------------------------------------------------------
                                echo "Cleaning workspace with 'make cleanall'..."
                                make cleanall
                                echo "------------------------------------------------------------"

                            done # pic_size
                        done # pic_2cycle
                    done # icache_size
                done # iccm_size
            done # icache_ecc
        done # dccm_size
    done # btb_size
done # target

echo ""
echo "============================================================"
echo "SWEEP FINISHED: $config_count configurations attempted."
echo "Total Failures: $FAIL_COUNT"
echo "Results collected in: $RESULTS_DIR"
echo "============================================================"
