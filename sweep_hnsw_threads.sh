#!/usr/bin/env bash
# Phase 6: HNSW advanced experiment.
#
# It only runs HNSW-related experiments and does NOT rerun Flat / PQFS / IVF / IVF-PQ.
# The first official HNSW run builds and saves the index under files/indexes/.
# Later runs reuse the saved index to avoid repeating expensive HNSW construction.
#
# Algorithms:
#   hnsw: serial HNSW query baseline
#   hnsw_batch_omp: query-level OpenMP parallel search
#   hnsw_batch_pthread: query-level Pthread parallel search
#
# Parameters:
#   M=16, efConstruction=100
#   efSearch is swept for serial recall-latency analysis, then fixed at 80 for thread tests.
#
# Usage:
#   cd ~/ann
#   chmod +x sweep_hnsw_threads.sh
#   bash sweep_hnsw_threads.sh

set -u

cd "$(dirname "$0")"

mkdir -p files/configs files/exp_logs files/indexes

echo "============================================================"
echo "[INFO] Recompiling current project"
echo "============================================================"
g++ main.cc -o main -O2 -fopenmp -lpthread -std=c++11
if [ $? -ne 0 ]; then
  echo "[ERROR] Compilation failed. Stop."
  exit 1
fi

M=16
EFC=100
P=1500

run_one() {
  ALGO="$1"
  T="$2"
  EF="$3"
  REBUILD="$4"

  echo ""
  echo "============================================================"
  echo "[RUN] ${ALGO}, threads=${T}, M=${M}, efConstruction=${EFC}, efSearch=${EF}, rebuild=${REBUILD}"
  echo "============================================================"

  cat > files/configs/run_config.txt <<EOF
ANN_ALGO=${ALGO}
ANN_THREADS=${T}
ANN_P=${P}
ANN_NLIST=128
ANN_NPROBE=32
ANN_HNSW_M=${M}
ANN_HNSW_EFC=${EFC}
ANN_HNSW_EF=${EF}
ANN_HNSW_REBUILD=${REBUILD}
EOF

  rm -f test.o test.e

  sh test.sh 2 1
  RET=$?

  TS=$(date +%Y%m%d_%H%M%S)

  if [ -f test.o ]; then
    cp test.o "files/exp_logs/${TS}_${ALGO}_t${T}_M${M}_efc${EFC}_ef${EF}.test.o"
  else
    echo "[ERROR] test.o was not generated for ${ALGO}, threads=${T}, ef=${EF}."
    exit 1
  fi

  if [ -f test.e ]; then
    cp test.e "files/exp_logs/${TS}_${ALGO}_t${T}_M${M}_efc${EFC}_ef${EF}.test.e"
  else
    echo "[INFO] test.e was not generated; skip stderr copy."
  fi

  if [ $RET -ne 0 ]; then
    echo "[WARN] test.sh returned non-zero status ${RET}; check the saved output."
  fi

  echo "[INFO] Last summary rows:"
  tail -n 5 files/exp_logs/summary.csv 2>/dev/null || true
}

# 1) HNSW efSearch sweep.
# First run builds the index if it does not already exist. Later runs load it.
run_one hnsw 1 40 0
run_one hnsw 1 80 0
run_one hnsw 1 120 0

# 2) Query-level batch parallel search at fixed efSearch=80.
run_one hnsw_batch_omp 1 80 0
run_one hnsw_batch_omp 2 80 0
run_one hnsw_batch_omp 4 80 0
run_one hnsw_batch_omp 8 80 0

run_one hnsw_batch_pthread 1 80 0
run_one hnsw_batch_pthread 2 80 0
run_one hnsw_batch_pthread 4 80 0
run_one hnsw_batch_pthread 8 80 0

echo ""
echo "============================================================"
echo "[DONE] HNSW experiments finished."
echo "[OUTPUT] logs are appended to files/exp_logs/summary.csv and saved in files/exp_logs/."
echo "[NEXT] Compress files/exp_logs manually and send it for checking."
echo "============================================================"
