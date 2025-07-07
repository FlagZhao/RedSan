#!/bin/bash
# Script to run Lulesh with GPUPunk analysis tools
# Modify the installation path here and mbedtls path
GPUPUNK_INSTALL_PATH="/home/yzhao62/opt/redsan_ae/redsan_install"
MBEDTLS_PATH=$GPUPUNK_INSTALL_PATH/spack/opt/spack/linux-zen3/mbedtls-3.6.2-w6vgvl2suc52tkiphv4qxvle442xldxn/lib

# Set up environment variables
export GPUPUNK_PATH=$GPUPUNK_INSTALL_PATH
export ENABLE_GPUTRIGGER="1"
export GPUPATCH_PATH=$GPUPUNK_INSTALL_PATH/gpu-patch
export REDSHOW_PATH=$GPUPUNK_INSTALL_PATH/redshow
export GPUTRIGGER_PATH=$GPUPUNK_INSTALL_PATH/gputrigger
export DRCCTPROF_PATH=$GPUPUNK_INSTALL_PATH/drcctprof
export LD_LIBRARY_PATH="/scratch/opt/cuda-12.1/lib64:/scratch/opt/cuda-12.1/compute-sanitizer:$MBEDTLS_PATH:$GPUPUNK_INSTALL_PATH/gputrigger:$GPUPUNK_INSTALL_PATH/redshow/lib:${LD_LIBRARY_PATH}"
export CUDA_PATH="/scratch/opt/cuda-12.1"
export CUDA_HOME="/scratch/opt/cuda-12.1"
export LD_PRELOAD=$GPUPUNK_INSTALL_PATH/gputrigger/libgputrigger.so:$GPUPUNK_INSTALL_PATH/libmonitor/lib/libmonitor.so
export GPUPUNK_ANALYSIS_MODE="9"  # redundant write mode
export GPUPUNK_WITH_DRRUN="0"
export GPUPUNK_VERBOSE="1"
export SANITIZER_DISABLE_PARALLEL_LAUNCHES="1"

# echo $LD_LIBRARY_PATH
# echo $LD_PRELOAD

# Run your executable here
# ./Your_executable > ./log_files 2>&1

echo "Target execution complete. Log file is available at ./log_files"