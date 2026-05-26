# Report Tables


## Flat-SIMD 多线程

| algorithm | backend | threads | nlist | nprobe_or_ef | p | recall | latency_us | speedup_vs_flat |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| flat | serial | 1 | 0 | 0 | 1500 | 0.99995 | 7609.642 | 1.00 |
| flat_batch_omp | openmp_query_batch | 1 | 0 | 0 | 1500 | 0.99995 | 6505.355 | 1.17 |
| flat_batch_omp | openmp_query_batch | 2 | 0 | 0 | 1500 | 0.99995 | 4415.441 | 1.72 |
| flat_batch_omp | openmp_query_batch | 4 | 0 | 0 | 1500 | 0.99995 | 1844.569 | 4.13 |
| flat_batch_omp | openmp_query_batch | 8 | 0 | 0 | 1500 | 0.99995 | 888.913 | 8.56 |
| flat_batch_pthread | pthread_query_batch | 1 | 0 | 0 | 1500 | 0.99995 | 6717.053 | 1.13 |
| flat_batch_pthread | pthread_query_batch | 2 | 0 | 0 | 1500 | 0.99995 | 3500.392 | 2.17 |
| flat_batch_pthread | pthread_query_batch | 4 | 0 | 0 | 1500 | 0.99995 | 2448.061 | 3.11 |
| flat_batch_pthread | pthread_query_batch | 8 | 0 | 0 | 1500 | 0.99995 | 1199.387 | 6.34 |
| flat_omp | openmp | 1 | 0 | 0 | 1500 | 0.99995 | 6436.443 | 1.18 |
| flat_omp | openmp | 2 | 0 | 0 | 1500 | 0.99995 | 3774.357 | 2.02 |
| flat_omp | openmp | 4 | 0 | 0 | 1500 | 0.99995 | 2074.501 | 3.67 |
| flat_omp | openmp | 8 | 0 | 0 | 1500 | 0.99995 | 1064.753 | 7.15 |
| flat_pthread | pthread | 1 | 0 | 0 | 1500 | 0.99995 | 5768.487 | 1.32 |
| flat_pthread | pthread | 2 | 0 | 0 | 1500 | 0.99995 | 3517.225 | 2.16 |
| flat_pthread | pthread | 4 | 0 | 0 | 1500 | 0.99995 | 2027.384 | 3.75 |
| flat_pthread | pthread | 8 | 0 | 0 | 1500 | 0.99995 | 2186.148 | 3.48 |

## PQFastScan 多线程

| algorithm | backend | threads | nlist | nprobe_or_ef | p | recall | latency_us | speedup_vs_pqfs |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| pqfs | serial | 8 | 0 | 0 | 1500 | 0.96030 | 1790.084 | 1.00 |
| pqfs_batch_omp | openmp_query_batch | 1 | 0 | 0 | 1500 | 0.96030 | 1783.220 | 1.00 |
| pqfs_batch_omp | openmp_query_batch | 2 | 0 | 0 | 1500 | 0.96030 | 876.803 | 2.04 |
| pqfs_batch_omp | openmp_query_batch | 4 | 0 | 0 | 1500 | 0.96030 | 446.613 | 4.01 |
| pqfs_batch_omp | openmp_query_batch | 8 | 0 | 0 | 1500 | 0.96030 | 310.587 | 5.76 |
| pqfs_batch_pthread | pthread_query_batch | 1 | 0 | 0 | 1500 | 0.96030 | 1773.119 | 1.01 |
| pqfs_batch_pthread | pthread_query_batch | 2 | 0 | 0 | 1500 | 0.96030 | 875.985 | 2.04 |
| pqfs_batch_pthread | pthread_query_batch | 4 | 0 | 0 | 1500 | 0.96030 | 436.189 | 4.10 |
| pqfs_batch_pthread | pthread_query_batch | 8 | 0 | 0 | 1500 | 0.96030 | 329.437 | 5.43 |
| pqfs_omp | openmp | 8 | 0 | 0 | 1500 | 0.96030 | 2088.246 | 0.86 |
| pqfs_pthread | pthread | 8 | 0 | 0 | 1500 | 0.96030 | 2048.383 | 0.87 |

## IVF nprobe 曲线

| nlist | nprobe | recall | latency_us | build_ms | notes |
| --- | --- | --- | --- | --- | --- |
| 128 | 8 | 0.93785 | 966.636 | 894.517 | phase3-4: IVF-SIMD baseline + IVF MT |
| 128 | 16 | 0.97975 | 2194.418 | 885.544 | phase3-4: IVF-SIMD baseline + IVF MT |
| 128 | 32 | 0.99520 | 3597.729 | 888.722 | phase3-4: IVF-SIMD baseline + IVF MT |
| 128 | 64 | 0.99915 | 8265.139 | 885.240 | phase3-4: IVF-SIMD baseline + IVF MT |

## IVF 多线程

| algorithm | backend | threads | nlist | nprobe_or_ef | p | recall | latency_us | speedup_vs_ivf |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| ivf | serial | 1 | 128 | 32 | 1500 | 0.99520 | 3597.729 | 1.00 |
| ivf_batch_omp | openmp_query_batch | 1 | 128 | 32 | 1500 | 0.99520 | 3343.972 | 1.08 |
| ivf_batch_omp | openmp_query_batch | 2 | 128 | 32 | 1500 | 0.99520 | 3048.810 | 1.18 |
| ivf_batch_omp | openmp_query_batch | 4 | 128 | 32 | 1500 | 0.99520 | 1408.763 | 2.55 |
| ivf_batch_omp | openmp_query_batch | 8 | 128 | 32 | 1500 | 0.99520 | 748.236 | 4.81 |
| ivf_batch_pthread | pthread_query_batch | 1 | 128 | 32 | 1500 | 0.99520 | 3413.066 | 1.05 |
| ivf_batch_pthread | pthread_query_batch | 2 | 128 | 32 | 1500 | 0.99520 | 3280.259 | 1.10 |
| ivf_batch_pthread | pthread_query_batch | 4 | 128 | 32 | 1500 | 0.99520 | 1705.749 | 2.11 |
| ivf_batch_pthread | pthread_query_batch | 8 | 128 | 32 | 1500 | 0.99520 | 924.417 | 3.89 |
| ivf_omp | openmp | 1 | 128 | 32 | 1500 | 0.99520 | 3208.391 | 1.12 |
| ivf_omp | openmp | 2 | 128 | 32 | 1500 | 0.99520 | 2641.338 | 1.36 |
| ivf_omp | openmp | 4 | 128 | 32 | 1500 | 0.99520 | 1176.218 | 3.06 |
| ivf_omp | openmp | 8 | 128 | 32 | 1500 | 0.99520 | 909.773 | 3.95 |
| ivf_pthread | pthread | 1 | 128 | 32 | 1500 | 0.99520 | 5654.609 | 0.64 |
| ivf_pthread | pthread | 2 | 128 | 32 | 1500 | 0.99520 | 3255.405 | 1.11 |
| ivf_pthread | pthread | 4 | 128 | 32 | 1500 | 0.99520 | 2296.055 | 1.57 |
| ivf_pthread | pthread | 8 | 128 | 32 | 1500 | 0.99520 | 1985.937 | 1.81 |

## IVF-PQ 多线程

| algorithm | backend | threads | nlist | nprobe_or_ef | p | recall | latency_us | speedup_vs_ivfpq |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| ivfpq | serial | 1 | 128 | 32 | 1500 | 0.96090 | 1585.711 | 1.00 |
| ivfpq_batch_omp | openmp_query_batch | 1 | 128 | 32 | 1500 | 0.96090 | 1832.262 | 0.87 |
| ivfpq_batch_omp | openmp_query_batch | 2 | 128 | 32 | 1500 | 0.96090 | 905.064 | 1.75 |
| ivfpq_batch_omp | openmp_query_batch | 4 | 128 | 32 | 1500 | 0.96090 | 492.715 | 3.22 |
| ivfpq_batch_omp | openmp_query_batch | 8 | 128 | 32 | 1500 | 0.96090 | 270.385 | 5.86 |
| ivfpq_batch_pthread | pthread_query_batch | 1 | 128 | 32 | 1500 | 0.96090 | 1740.555 | 0.91 |
| ivfpq_batch_pthread | pthread_query_batch | 2 | 128 | 32 | 1500 | 0.96090 | 892.330 | 1.78 |
| ivfpq_batch_pthread | pthread_query_batch | 4 | 128 | 32 | 1500 | 0.96090 | 532.094 | 2.98 |
| ivfpq_batch_pthread | pthread_query_batch | 8 | 128 | 32 | 1500 | 0.96090 | 302.693 | 5.24 |
| ivfpq_omp | openmp | 1 | 128 | 32 | 1500 | 0.96090 | 2029.690 | 0.78 |
| ivfpq_omp | openmp | 2 | 128 | 32 | 1500 | 0.96090 | 1098.073 | 1.44 |
| ivfpq_omp | openmp | 4 | 128 | 32 | 1500 | 0.96090 | 782.345 | 2.03 |
| ivfpq_omp | openmp | 8 | 128 | 32 | 1500 | 0.96090 | 585.651 | 2.71 |
| ivfpq_pthread | pthread | 1 | 128 | 32 | 1500 | 0.96090 | 2144.774 | 0.74 |
| ivfpq_pthread | pthread | 2 | 128 | 32 | 1500 | 0.96090 | 1492.082 | 1.06 |
| ivfpq_pthread | pthread | 4 | 128 | 32 | 1500 | 0.96090 | 1102.863 | 1.44 |
| ivfpq_pthread | pthread | 8 | 128 | 32 | 1500 | 0.96090 | 1430.744 | 1.11 |

## HNSW efSearch 曲线

| efSearch | recall | latency_us | build_or_load_ms | notes |
| --- | --- | --- | --- | --- |
| 40 | 0.95645 | 214.235 | 45289.394 | phase6: HNSW baseline; M=16; efConstruction=100; efSearch=40; loaded=no |
| 80 | 0.98515 | 393.966 | 517.695 | phase6: HNSW baseline; M=16; efConstruction=100; efSearch=80; loaded=yes |
| 120 | 0.99220 | 529.847 | 523.140 | phase6: HNSW baseline; M=16; efConstruction=100; efSearch=120; loaded=yes |

## HNSW 多线程

| algorithm | backend | threads | nlist | nprobe_or_ef | p | recall | latency_us | speedup_vs_hnsw_ef80 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| hnsw | serial | 1 | 0 | 80 | 100 | 0.98515 | 393.966 | 1.00 |
| hnsw_batch_omp | openmp_query_batch | 1 | 0 | 80 | 100 | 0.98515 | 401.664 | 0.98 |
| hnsw_batch_omp | openmp_query_batch | 2 | 0 | 80 | 100 | 0.98515 | 185.531 | 2.12 |
| hnsw_batch_omp | openmp_query_batch | 4 | 0 | 80 | 100 | 0.98515 | 95.184 | 4.14 |
| hnsw_batch_omp | openmp_query_batch | 8 | 0 | 80 | 100 | 0.98515 | 50.166 | 7.85 |
| hnsw_batch_pthread | pthread_query_batch | 1 | 0 | 80 | 100 | 0.98515 | 393.683 | 1.00 |
| hnsw_batch_pthread | pthread_query_batch | 2 | 0 | 80 | 100 | 0.98515 | 187.842 | 2.10 |
| hnsw_batch_pthread | pthread_query_batch | 4 | 0 | 80 | 100 | 0.98515 | 103.655 | 3.80 |
| hnsw_batch_pthread | pthread_query_batch | 8 | 0 | 80 | 100 | 0.98515 | 82.138 | 4.80 |

## 各算法最佳结果对比

| algorithm | backend | threads | nlist | nprobe_or_ef | p | recall | latency_us | build_ms |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| hnsw_batch_omp | openmp_query_batch | 8 | 0 | 80 | 100 | 0.98515 | 50.166 | 518.791 |
| hnsw_batch_pthread | pthread_query_batch | 8 | 0 | 80 | 100 | 0.98515 | 82.138 | 521.075 |
| hnsw | serial | 1 | 0 | 40 | 100 | 0.95645 | 214.235 | 45289.394 |
| ivfpq_batch_omp | openmp_query_batch | 8 | 128 | 32 | 1500 | 0.96090 | 270.385 | 1291.097 |
| ivfpq_batch_pthread | pthread_query_batch | 8 | 128 | 32 | 1500 | 0.96090 | 302.693 | 1286.384 |
| pqfs_batch_omp | openmp_query_batch | 8 | 0 | 0 | 1500 | 0.96030 | 310.587 | 379.936 |
| pqfs_batch_pthread | pthread_query_batch | 8 | 0 | 0 | 1500 | 0.96030 | 329.437 | 403.522 |
| ivfpq_omp | openmp | 8 | 128 | 32 | 1500 | 0.96090 | 585.651 | 1295.908 |
| ivf_batch_omp | openmp_query_batch | 8 | 128 | 32 | 1500 | 0.99520 | 748.236 | 893.309 |
| flat_batch_omp | openmp_query_batch | 8 | 0 | 0 | 1500 | 0.99995 | 888.913 | 389.045 |
| ivf_omp | openmp | 8 | 128 | 32 | 1500 | 0.99520 | 909.773 | 895.058 |
| ivf_batch_pthread | pthread_query_batch | 8 | 128 | 32 | 1500 | 0.99520 | 924.417 | 889.368 |
| ivf | serial | 1 | 128 | 8 | 1500 | 0.93785 | 966.636 | 894.517 |
| flat_omp | openmp | 8 | 0 | 0 | 1500 | 0.99995 | 1064.753 | 390.372 |
| ivfpq_pthread | pthread | 4 | 128 | 32 | 1500 | 0.96090 | 1102.863 | 1267.019 |
| flat_batch_pthread | pthread_query_batch | 8 | 0 | 0 | 1500 | 0.99995 | 1199.387 | 388.845 |
| ivfpq | serial | 1 | 128 | 32 | 1500 | 0.96090 | 1585.711 | 1288.258 |
| pqfs | serial | 8 | 0 | 0 | 1500 | 0.96030 | 1790.084 | 371.993 |
| ivf_pthread | pthread | 8 | 128 | 32 | 1500 | 0.99520 | 1985.937 | 883.526 |
| flat_pthread | pthread | 4 | 0 | 0 | 1500 | 0.99995 | 2027.384 | 383.762 |
| pqfs_pthread | pthread | 8 | 0 | 0 | 1500 | 0.96030 | 2048.383 | 377.589 |
| pqfs_omp | openmp | 8 | 0 | 0 | 1500 | 0.96030 | 2088.246 | 372.964 |
| flat | serial | 1 | 0 | 0 | 1500 | 0.99995 | 7609.642 | 388.159 |