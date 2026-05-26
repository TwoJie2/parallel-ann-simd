#!/usr/bin/env bash
# Phase 5: IVF-PQ-SIMD baseline and IVF-PQ OpenMP/Pthread multi-thread experiments.
# This script only runs IVF-PQ related algorithms and does not rerun Flat/PQFS/IVF experiments.
# It tolerates missing test.e, because some successful PBS jobs do not generate stderr.

cd "$(dirname "$0")"
mkdir -p files/configs files/exp_logs

echo "============================================================"
echo "[INFO] Recompiling current project for Phase 5 IVF-PQ"
echo "============================================================"
g++ main.cc -o main -O2 -fopenmp -lpthread -std=c++11
if [ $? -ne 0 ]; then
  echo "[ERROR] Compilation failed. Stop."
  exit 1
fi

NLIST=128
NPROBE=32
P=1500

run_one() {
  ALGO="$1"
  T="$2"

  echo ""
  echo "============================================================"
  echo "[RUN] ${ALGO}, threads=${T}, nlist=${NLIST}, nprobe=${NPROBE}, p=${P}"
  echo "============================================================"

  cat > files/configs/run_config.txt <<EOF_CFG
ANN_ALGO=${ALGO}
ANN_THREADS=${T}
ANN_P=${P}
ANN_NLIST=${NLIST}
ANN_NPROBE=${NPROBE}
EOF_CFG

  rm -f test.o test.e
  sh test.sh 2 1
  RET=$?

  TS=$(date +%Y%m%d_%H%M%S)

  if [ -f test.o ]; then
    cp test.o "files/exp_logs/${TS}_${ALGO}_t${T}_nlist${NLIST}_nprobe${NPROBE}_p${P}.test.o"
  else
    echo "[ERROR] test.o was not generated for ${ALGO}, threads=${T}."
    echo "[ERROR] Stop here. Check the job output above."
    exit 1
  fi

  if [ -f test.e ]; then
    cp test.e "files/exp_logs/${TS}_${ALGO}_t${T}_nlist${NLIST}_nprobe${NPROBE}_p${P}.test.e"
  else
    echo "[INFO] test.e was not generated for ${ALGO}, threads=${T}; skipped stderr copy."
  fi

  if [ $RET -ne 0 ]; then
    echo "[WARN] test.sh returned non-zero status ${RET}, but test.o exists."
    echo "[WARN] This is usually caused by missing test.e printing/copying rather than algorithm failure."
  fi

  echo "[INFO] Last summary rows:"
  tail -n 5 files/exp_logs/summary.csv 2>/dev/null || true
}

# IVF-PQ serial baseline.
run_one ivfpq 1

# Single-query internal parallelism.
run_one ivfpq_omp 1
run_one ivfpq_omp 2
run_one ivfpq_omp 4
run_one ivfpq_omp 8

run_one ivfpq_pthread 1
run_one ivfpq_pthread 2
run_one ivfpq_pthread 4
run_one ivfpq_pthread 8

# Query-level batch parallelism.
run_one ivfpq_batch_omp 1
run_one ivfpq_batch_omp 2
run_one ivfpq_batch_omp 4
run_one ivfpq_batch_omp 8

run_one ivfpq_batch_pthread 1
run_one ivfpq_batch_pthread 2
run_one ivfpq_batch_pthread 4
run_one ivfpq_batch_pthread 8

echo ""
echo "[DONE] Phase 5 IVF-PQ experiments finished."
echo "[NEXT] Download and send: exp_logs_phase5_ivfpq.zip"
