#!/bin/bash


for p in 1 8 24 30 48
do 
  cat thin_jacobi_strong_nodes_tcp_${p}.out | grep Maxtime >file1
  sed 's/  4  Maxtime , Mintime + JacobiMi , JacobiMa   //' file1 > file2
  sed 's/       /,/g' file2 > file3
  sed 's/Residual    //' file3 >file4
  sed 's/      MLUPs    /,/' file4 >thin_jacobi_strong_nodes_tcp_${p}.csv
done

cat thin_strong_jacobi_nodes_tcp_24.out | grep Maxtime >file1
sed 's/  4  Maxtime , Mintime + JacobiMi , JacobiMa   //' file1 > file2
sed 's/       /,/g' file2 > file3
sed 's/Residual    //' file3 >file4
sed 's/      MLUPs    /,/' file4 >thin_jacobi_strong_nodes_tcp_24.csv


