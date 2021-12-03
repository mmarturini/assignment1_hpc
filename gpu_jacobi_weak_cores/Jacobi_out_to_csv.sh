#!/bin/bash


for p in  1 2 4 8 12 24
do
  cat gpu_weak_jacobi_cores_${p}.out | grep Maxtime >file1
  sed 's/  4  Maxtime , Mintime + JacobiMi , JacobiMa   //' file1 > file2
  sed 's/       /,/g' file2 > file3
  sed 's/Residual    //' file3 >file4
  sed 's/      MLUPs    /,/' file4 >gpu_weak_jacobi_cores_${p}.csv
done

rm file*
