#!/usr/bin/env bash

mkdir -p files/configs files/exp_logs

for ALGO in pqfs_batch_omp pqfs_batch_pthread
do
  for T in 1 2 4 8
  do
    echo "===== Running ${ALGO}, threads=${T}, p=1500 ====="

    cat > files/configs/run_config.txt << CONFIG
ANN_ALGO=${ALGO}
ANN_THREADS=${T}
ANN_P=1500
CONFIG

    sh test.sh 2 1

    RUN_ID=$(date +%Y%m%d_%H%M%S)
    cp test.o files/exp_logs/${RUN_ID}_${ALGO}_t${T}_p1500.test.o
    cp test.e files/exp_logs/${RUN_ID}_${ALGO}_t${T}_p1500.test.e

    sleep 2
  done
done

echo "===== Latest summary ====="
tail -n 20 files/exp_logs/summary.csv
