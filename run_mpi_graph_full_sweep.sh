#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"
cd "$ROOT"

CONFIG="files/configs/run_config.txt"
QSUB="qsub_mpi.sh"
MAIN="main"
OUT_DIR="files/mpi_results/run_outputs"
SKIP_EXISTING="${SKIP_EXISTING:-1}"
POLL_SECONDS="${POLL_SECONDS:-5}"

if [[ ! -f "$CONFIG" ]]; then
  echo "missing $CONFIG" >&2
  exit 1
fi
if [[ ! -f "$QSUB" ]]; then
  echo "missing $QSUB" >&2
  exit 1
fi
if ! command -v mpic++ >/dev/null 2>&1; then
  echo "mpic++ not found; load MPI environment first" >&2
  exit 1
fi
if ! command -v qsub >/dev/null 2>&1; then
  echo "qsub not found; run this script on the PBS master node" >&2
  exit 1
fi

mkdir -p "$OUT_DIR" files/mpi_results/exp_logs
rm -rf files/mpi_results/report_tables

CFG_BAK="$(mktemp)"
QSUB_BAK="$(mktemp)"
cp -f "$CONFIG" "$CFG_BAK"
cp -f "$QSUB" "$QSUB_BAK"

restore_files() {
  cp -f "$CFG_BAK" "$CONFIG" || true
  cp -f "$QSUB_BAK" "$QSUB" || true
}
trap restore_files EXIT INT TERM

compile_main() {
  echo "[build] mpic++ main.cc -> $MAIN"
  mpic++ -std=c++11 -O2 -fopenmp -pthread -DANN_ENABLE_MPI main.cc -o "$MAIN"
}

set_config() {
  local algo="$1" threads="$2" nlist="$3" nprobe="$4" p="$5" M="$6" efc="$7" ef="$8" parts="$9" router_probe="${10}"
  python3 - "$CONFIG" "$algo" "$threads" "$nlist" "$nprobe" "$p" "$M" "$efc" "$ef" "$parts" "$router_probe" <<'PY'
from pathlib import Path
import sys
path=Path(sys.argv[1])
vals={
  'ANN_ALGO':sys.argv[2],
  'ANN_THREADS':sys.argv[3],
  'ANN_NLIST':sys.argv[4],
  'ANN_NPROBE':sys.argv[5],
  'ANN_P':sys.argv[6],
  'ANN_HNSW_M':sys.argv[7],
  'ANN_HNSW_EFC':sys.argv[8],
  'ANN_HNSW_EF':sys.argv[9],
  'ANN_GRAPH_PARTS_PER_RANK':sys.argv[10],
  'ANN_GRAPH_ROUTER_PROBE':sys.argv[11],
}
lines=path.read_text().splitlines()
seen=set()
out=[]
for line in lines:
    raw=line.strip()
    if raw and not raw.startswith('#') and '=' in line:
        k=line.split('=',1)[0].strip()
        if k in vals:
            out.append(f'{k}={vals[k]}')
            seen.add(k)
        else:
            out.append(line)
    else:
        out.append(line)
for k,v in vals.items():
    if k not in seen:
        out.append(f'{k}={v}')
path.write_text('\n'.join(out)+'\n')
PY
}

set_qsub_params() {
  local nodes="$1" ppn="$2" np="$3"
  python3 - "$QSUB" "$nodes" "$ppn" "$np" <<'PY'
from pathlib import Path
import re, sys
path=Path(sys.argv[1])
nodes,ppn,np=sys.argv[2],sys.argv[3],sys.argv[4]
s=path.read_text()
s=re.sub(r'^#PBS\s+-l\s+nodes=.*$', f'#PBS -l nodes={nodes}:ppn={ppn}', s, flags=re.M)
s=re.sub(r'/usr/local/bin/mpiexec\s+-np\s+\d+\s+-machinefile', f'/usr/local/bin/mpiexec -np {np} -machinefile', s)
path.write_text(s)
PY
}

get_job_state() {
  local job_id="$1"
  qstat -f "$job_id" 2>/dev/null | awk -F'= ' '/job_state/{print $2; exit}' | tr -d '[:space:]'
}

wait_job() {
  local job_id="$1"
  while true; do
    local st
    st="$(get_job_state "$job_id" || true)"
    if [[ -z "$st" ]]; then
      break
    fi
    if [[ "$st" == "C" || "$st" == "E" ]]; then
      break
    fi
    echo "[wait] $job_id state=$st"
    sleep "$POLL_SECONDS"
  done
}

wait_outputs() {
  for _ in $(seq 1 60); do
    [[ -f test.o && -f test.e ]] && return 0
    sleep 1
  done
  echo "test.o/test.e not generated" >&2
  return 1
}

check_outputs() {
  local label="$1"
  local bad='Segmentation fault|MPI_ABORT|No such file|Permission denied|failed to|ERROR|Traceback|not found|core dumped'
  if grep -Eiq "$bad" test.o test.e; then
    echo "fatal pattern found in test.o/test.e for $label" >&2
    return 1
  fi
}

run_case() {
  local label="$1" algo="$2" np="$3" nodes="$4" ppn="$5" threads="$6" nlist="$7" nprobe="$8" p="$9" M="${10}" efc="${11}" ef="${12}" parts="${13}" router_probe="${14}"
  local saved_o="$OUT_DIR/${label}.test.o"
  local saved_e="$OUT_DIR/${label}.test.e"
  if [[ "$SKIP_EXISTING" == "1" && -s "$saved_o" && -s "$saved_e" ]]; then
    echo "[skip] $label"
    return 0
  fi

  echo "========== CASE $label =========="
  echo "algo=$algo np=$np nodes=$nodes ppn=$ppn threads=$threads nlist=$nlist nprobe=$nprobe M=$M efc=$efc ef=$ef parts=$parts router_probe=$router_probe"
  rm -f test.o test.e
  set_config "$algo" "$threads" "$nlist" "$nprobe" "$p" "$M" "$efc" "$ef" "$parts" "$router_probe"
  set_qsub_params "$nodes" "$ppn" "$np"

  local job_id
  job_id="$(qsub "$QSUB" | awk '{print $1}')"
  echo "$job_id" > "$OUT_DIR/last_graph_job_id.txt"
  echo "[qsub] $job_id"
  wait_job "$job_id"
  wait_outputs
  check_outputs "$label"
  cp -f test.o "$saved_o"
  cp -f test.e "$saved_e"
  rm -rf files/mpi_results/report_tables
  echo "[done] $label"
}

compile_main

# Sharded HNSW scaling, using pure MPI.
run_case graph_shard_np1_t1_M16_ef80   mpi_hnsw_shard 1  1 1 1 128 32 1500 16 100 80  4 16
run_case graph_shard_np2_t1_M16_ef80   mpi_hnsw_shard 2  1 2 1 128 32 1500 16 100 80  4 16
run_case graph_shard_np4_t1_M16_ef80   mpi_hnsw_shard 4  1 4 1 128 32 1500 16 100 80  4 16
run_case graph_shard_np8_t1_M16_ef80   mpi_hnsw_shard 8  1 8 1 128 32 1500 16 100 80  4 16
run_case graph_shard_np16_t1_M16_ef80  mpi_hnsw_shard 16 2 8 1 128 32 1500 16 100 80  4 16

# HNSW efSearch trade-off. ef=80 is covered by graph_shard_np8_t1_M16_ef80.
run_case graph_shard_np8_t1_M16_ef40   mpi_hnsw_shard 8 1 8 1 128 32 1500 16 100 40  4 16
run_case graph_shard_np8_t1_M16_ef120  mpi_hnsw_shard 8 1 8 1 128 32 1500 16 100 120 4 16
run_case graph_shard_np8_t1_M16_ef200  mpi_hnsw_shard 8 1 8 1 128 32 1500 16 100 200 4 16

# IVF + HNSW: nprobe and efSearch trade-off.
run_case graph_ivfhnsw_np8_t1_npb8_ef80    mpi_ivf_hnsw 8 1 8 1 128 8  1500 16 100 80  4 16
run_case graph_ivfhnsw_np8_t1_npb16_ef80   mpi_ivf_hnsw 8 1 8 1 128 16 1500 16 100 80  4 16
run_case graph_ivfhnsw_np8_t1_npb32_ef80   mpi_ivf_hnsw 8 1 8 1 128 32 1500 16 100 80  4 16
run_case graph_ivfhnsw_np8_t1_npb16_ef40   mpi_ivf_hnsw 8 1 8 1 128 16 1500 16 100 40  4 16
run_case graph_ivfhnsw_np8_t1_npb16_ef120  mpi_ivf_hnsw 8 1 8 1 128 16 1500 16 100 120 4 16

# IVF + HNSW + OpenMP, same total requested cores as the previous hybrid IVF tests.
run_case graph_ivfhnsw_omp_np8_t2_npb16_ef80 mpi_ivf_hnsw_omp 8 2 8 2 128 16 1500 16 100 80 4 16
run_case graph_ivfhnsw_omp_np4_t4_npb16_ef80 mpi_ivf_hnsw_omp 4 2 8 4 128 16 1500 16 100 80 4 16

# HNSW-on-HNSW router: router_probe trade-off. router_probe=16 is also used as the scaling center.
run_case graph_router_np8_t1_parts4_rp4   mpi_hnsw_router 8 1 8 1 128 32 1500 16 100 80 4 4
run_case graph_router_np8_t1_parts4_rp8   mpi_hnsw_router 8 1 8 1 128 32 1500 16 100 80 4 8
run_case graph_router_np8_t1_parts4_rp16  mpi_hnsw_router 8 1 8 1 128 32 1500 16 100 80 4 16
run_case graph_router_np8_t1_parts4_rp32  mpi_hnsw_router 8 1 8 1 128 32 1500 16 100 80 4 32

# Router scaling. np=8/router_probe=16 is covered by graph_router_np8_t1_parts4_rp16.
run_case graph_router_np4_t1_parts4_rp16  mpi_hnsw_router 4  1 4 1 128 32 1500 16 100 80 4 16
run_case graph_router_np16_t1_parts4_rp16 mpi_hnsw_router 16 2 8 1 128 32 1500 16 100 80 4 16

restore_files
trap - EXIT INT TERM
rm -f "$CFG_BAK" "$QSUB_BAK"
echo "All MPI graph experiments finished. Results: files/mpi_results/exp_logs/summary.csv and files/mpi_results/run_outputs/*.test.o/e"
