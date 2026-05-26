#!/usr/bin/env bash

# Phase 4: IVF multithread experiments.
# Purpose:
#   Compare serial IVF, single-query internal parallel IVF, and query-batch IVF
#   under OpenMP/Pthread backends.
# Note:
#   Keep nlist/nprobe fixed after Phase 3 so this script focuses on thread scalability.

set -e

mkdir -p files/configs files/exp_logs

NLIST=128
NPROBE=32
P=1500

# Serial baseline
echo "===== Running ivf serial, threads=1, nlist=${NLIST}, nprobe=${NPROBE} ====="
cat > files/configs/run_config.txt << CONFIG
ANN_ALGO=ivf
ANN_THREADS=1
ANN_P=${P}
ANN_NLIST=${NLIST}
ANN_NPROBE=${NPROBE}
CONFIG

sh test.sh 2 1
RUN_ID=$(date +%Y%m%d_%H%M%S)
cp test.o files/exp_logs/${RUN_ID}_ivf_t1_nlist${NLIST}_nprobe${NPROBE}.test.o
cp test.e files/exp_logs/${RUN_ID}_ivf_t1_nlist${NLIST}_nprobe${NPROBE}.test.e
sleep 2

for ALGO in ivf_omp ivf_pthread ivf_batch_omp ivf_batch_pthread
do
  for T in 1 2 4 8
  do
    echo "===== Running ${ALGO}, threads=${T}, nlist=${NLIST}, nprobe=${NPROBE} ====="

    cat > files/configs/run_config.txt << CONFIG
ANN_ALGO=${ALGO}
ANN_THREADS=${T}
ANN_P=${P}
ANN_NLIST=${NLIST}
ANN_NPROBE=${NPROBE}
CONFIG

    sh test.sh 2 1

    RUN_ID=$(date +%Y%m%d_%H%M%S)
    cp test.o files/exp_logs/${RUN_ID}_${ALGO}_t${T}_nlist${NLIST}_nprobe${NPROBE}.test.o
    cp test.e files/exp_logs/${RUN_ID}_${ALGO}_t${T}_nlist${NLIST}_nprobe${NPROBE}.test.e

    sleep 2
  done
done

echo "===== Latest summary ====="
tail -n 30 files/exp_logs/summary.csv
