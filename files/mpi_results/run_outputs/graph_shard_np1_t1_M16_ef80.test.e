
Authorized users only. All activities may be monitored and reported.

Authorized users only. All activities may be monitored and reported.

Authorized users only. All activities may be monitored and reported.

Authorized users only. All activities may be monitored and reported.
load data /anndata/DEEP100K.query.fbin
dimension: 96  number:10000  size_per_element:4
load data /anndata/DEEP100K.gt.query.100k.top100.bin
dimension: 100  number:10000  size_per_element:4
load data shard /anndata/DEEP100K.base.100k.fbin begin:0 count:100000 global_number:100000 dimension:96 size_per_element:4
MPI ANN run: algorithm=mpi_hnsw_shard np=1 threads=1 base=100000 query=2000 dim=96 nlist=128 nprobe=32 M=16 efC=100 ef=80 parts_per_rank=4 router_probe=16
