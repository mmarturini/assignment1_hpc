#!/bin/bash

sed '1,8d' thin_intelMPI_core_0_22_shm.out >test.txt
cat test.txt | grep -v ^# | grep -v '^$' >prova.txt


sed 's/            /,/g' prova.txt >prova1.txt
sed 's/           /,/g' prova1.txt >prova2.txt
sed 's/          /,/g' prova2.txt >prova3.txt
sed 's/         /,/g' prova3.txt >prova5.txt
sed 's/        /,/g' prova5.txt >prova6.txt
sed 's/       /,/g' prova6.txt >prova7.txt
sed 's/      /,/g' prova7.txt >prova8.txt
sed 's/     /,/g' prova8.txt >prova9.txt
sed 's/    /,/g' prova9.txt >prova10.txt
sed 's/   /,/g' prova10.txt >prova11.txt
sed 's/  /,/g' prova11.txt >prova12.txt
sed 's/ /,/g' prova12.txt >thin_intelMPI_core_0_22_shm.csv


rm prova* 
rm test.txt	
