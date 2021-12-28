#!/bin/bash

cat thin_inside_socket_4.out | grep Maxtime >file1
sed 's/  4  Maxtime , Mintime + JacobiMi , JacobiMa   //' file1 > file2
sed 's/       /,/g' file2 > file3
sed 's/Residual    //' file3 >file4
sed 's/      MLUPs    /,/' file4 >thin_cores_4.csv


cat thin_inside_socket_8.out | grep Maxtime >file1
sed 's/  4  Maxtime , Mintime + JacobiMi , JacobiMa   //' file1 > file2
sed 's/       /,/g' file2 > file3
sed 's/Residual    //' file3 >file4
sed 's/      MLUPs    /,/' file4 >thin_cores_8.csv


cat thin_inside_socket_12.out | grep Maxtime >file1
sed 's/  4  Maxtime , Mintime + JacobiMi , JacobiMa   //' file1 > file2
sed 's/       /,/g' file2 > file3
sed 's/Residual    //' file3 >file4
sed 's/      MLUPs    /,/' file4 >thin_cores_12.csv


rm file*

