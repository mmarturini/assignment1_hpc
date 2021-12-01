#!/bin/bash

cat single_core_gpu.out | grep Maxtime >file1
sed 's/  4  Maxtime , Mintime + JacobiMi , JacobiMa   //' file1 > file2
sed 's/       /,/g' file2 > file3
sed 's/Residual    //' file3 >file4
sed 's/      MLUPs    /,/' file4 >single_core_gpu.csv

cat single_core_thin.out | grep Maxtime >file1
sed 's/  4  Maxtime , Mintime + JacobiMi , JacobiMa   //' file1 > file2
sed 's/       /,/g' file2 > file3
sed 's/Residual    //' file3 >file4
sed 's/      MLUPs    /,/' file4 >single_core_thin.csv

rm file*


