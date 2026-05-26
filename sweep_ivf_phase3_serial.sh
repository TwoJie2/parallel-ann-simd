#!/usr/bin/env bash

# Phase 3: IVF-SIMD serial baseline.
# Purpose:
#   Build an IVF index and test different nprobe values.
#   This is the recall-latency baseline for the later IVF multithread experiment.

set -e

mkdir -p files/configs files/exp_logs

NLIST=128
THREADS=1
P=1500

for NPROBE in 8 16 32 64
do
  echo "===== Running ivf serial, nlist=${NLIST}, nprobe=${NPROBE}, threads=${THREADS} ====="

  cat > files/configs/run_config.txt << CONFIG
ANN_ALGO=ivf
ANN_THREADS=${THREADS}
ANN_P=${P}
ANN_NLIST=${NLIST}
ANN_NPROBE=${NPROBE}
CONFIG

  sh test.sh 2 1

  RUN_ID=$(date +%Y%m%d_%H%M%S)
  cp test.o files/exp_logs/${RUN_ID}_ivf_t${THREADS}_nlist${NLIST}_nprobe${NPROBE}.test.o
  cp test.e files/exp_logs/${RUN_ID}_ivf_t${THREADS}_nlist${NLIST}_nprobe${NPROBE}.test.e

  sleep 2
done

echo "===== Latest summary ====="
tail -n 20 files/exp_logs/summary.csv
