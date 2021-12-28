#!/bin/bash


for p in 1 8 16 24 32 48 64 96 
do
  cat gpu_jacobi_nodes${p}.out | grep Maxtime >file1
  sed 's/  4  Maxtime , Mintime + JacobiMi , JacobiMa   //' file1 > file2
  sed 's/       /,/g' file2 > file3
  sed 's/Residual    //' file3 >file4
  sed 's/      MLUPs    /,/' file4 >gpu_jacobi_nodes${p}.csv
done

rm file*


