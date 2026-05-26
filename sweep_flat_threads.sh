#!/usr/bin/env bash
set -u

# Phase 1: Flat-SIMD + OpenMP/Pthread multi-thread experiment
# Keep all outputs under the existing project structure:
#   files/configs/run_config.txt
#   files/exp_logs/<timestamp>_<algorithm>_t<threads>_p1500.test.o
#   files/exp_logs/<timestamp>_<algorithm>_t<threads>_p1500.test.e
#   files/exp_logs/summary.csv

mkdir -p files/configs files/exp_logs

P=1500
THREAD_LIST="1 2 4 8"

run_case() {
  local ALGO="$1"
  local T="$2"

  echo "===== Running ${ALGO}, threads=${T}, p=${P} ====="

  cat > files/configs/run_config.txt << CONFIG
ANN_ALGO=${ALGO}
ANN_THREADS=${T}
ANN_P=${P}
CONFIG

  # Follow the existing project workflow. test.sh compiles main.cc, submits the job,
  # waits for test.o/test.e, and main.cc appends one line to files/exp_logs/summary.csv.
  sh test.sh 2 1

  local RUN_ID
  RUN_ID=$(date +%Y%m%d_%H%M%S)

  if [ -f test.o ]; then
    cp test.o "files/exp_logs/${RUN_ID}_${ALGO}_t${T}_p${P}.test.o"
  else
    echo "warning: test.o not found after ${ALGO}, threads=${T}" >&2
  fi

  if [ -f test.e ]; then
    cp test.e "files/exp_logs/${RUN_ID}_${ALGO}_t${T}_p${P}.test.e"
  else
    echo "warning: test.e not found after ${ALGO}, threads=${T}" >&2
  fi

  sleep 2
}

# 1) Serial Flat-SIMD baseline.
# Run it only once. Its thread field is set to 1 for table consistency.
run_case flat 1

# 2) Single-query internal base-vector partitioning.
# Each query is processed separately; threads divide the base vectors and merge local top-k.
for T in ${THREAD_LIST}; do
  run_case flat_omp "${T}"
done

for T in ${THREAD_LIST}; do
  run_case flat_pthread "${T}"
done

# 3) Query-level batch parallelism for Flat-SIMD.
# These two algorithms are already supported by the current main.cc. They are useful
# as an additional comparison because different queries are independent and the
# synchronization cost is lower than per-query thread creation.
for T in ${THREAD_LIST}; do
  run_case flat_batch_omp "${T}"
done

for T in ${THREAD_LIST}; do
  run_case flat_batch_pthread "${T}"
done

echo "===== Phase 1 Flat-SIMD multi-thread experiment finished ====="
echo "===== Latest summary entries ====="
tail -n 30 files/exp_logs/summary.csv
