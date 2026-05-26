#!/usr/bin/env bash
# Continue Phase 4 IVF multi-thread experiments from the interrupted point.
# This script intentionally DOES NOT rerun:
#   ivf
#   ivf_omp 1/2/4/8
#   ivf_pthread 1/2
# It only runs the missing configurations and tolerates missing test.e.

cd "$(dirname "$0")"

mkdir -p files/configs files/exp_logs

echo "============================================================"
echo "[INFO] Recompiling current project"
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
  echo "[RUN] ${ALGO}, threads=${T}, nlist=${NLIST}, nprobe=${NPROBE}"
  echo "============================================================"

  cat > files/configs/run_config.txt <<EOF
ANN_ALGO=${ALGO}
ANN_THREADS=${T}
ANN_P=${P}
ANN_NLIST=${NLIST}
ANN_NPROBE=${NPROBE}
EOF

  rm -f test.o test.e

  sh test.sh 2 1
  RET=$?

  TS=$(date +%Y%m%d_%H%M%S)

  if [ -f test.o ]; then
    cp test.o "files/exp_logs/${TS}_${ALGO}_t${T}_nlist${NLIST}_nprobe${NPROBE}.test.o"
  else
    echo "[ERROR] test.o was not generated for ${ALGO}, threads=${T}."
    echo "[ERROR] Stop here. Check the job output above."
    exit 1
  fi

  if [ -f test.e ]; then
    cp test.e "files/exp_logs/${TS}_${ALGO}_t${T}_nlist${NLIST}_nprobe${NPROBE}.test.e"
  else
    echo "[INFO] test.e was not generated for ${ALGO}, threads=${T}; skipped stderr copy."
  fi

  if [ $RET -ne 0 ]; then
    echo "[WARN] test.sh returned non-zero status ${RET}, but test.o exists."
    echo "[WARN] This is often caused by missing test.e printing/copying, not by algorithm failure."
  fi

  echo "[INFO] Last summary rows:"
  tail -n 5 files/exp_logs/summary.csv 2>/dev/null || true
}

# Missing data after the interrupted run:
run_one ivf_pthread 4
run_one ivf_pthread 8

run_one ivf_batch_omp 1
run_one ivf_batch_omp 2
run_one ivf_batch_omp 4
run_one ivf_batch_omp 8

run_one ivf_batch_pthread 1
run_one ivf_batch_pthread 2
run_one ivf_batch_pthread 4
run_one ivf_batch_pthread 8

echo ""
echo "============================================================"
echo "[INFO] Packing logs"
echo "============================================================"
zip -r exp_logs_phase4_ivf_threads_continue.zip files/exp_logs

echo ""
echo "[DONE] Continue script finished."
echo "[NEXT] Download and send: exp_logs_phase4_ivf_threads_continue.zip"
