#!/bin/bash

cat gpu_openMPI_node_default.out | grep -v ^# | grep -v '^$' >prova.txt

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
sed 's/ /,/g' prova12.txt >gpu_openMPI_node_default.csv

rm prova*	



cat gpu_openMPI_node_tcp.out | grep -v ^# | grep -v '^$' >prova.txt

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
sed 's/ /,/g' prova12.txt >gpu_openMPI_node_tcp.csv

rm prova*




cat gpu_openMPI_socket_default.out | grep -v ^# | grep -v '^$' >prova.txt

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
sed 's/ /,/g' prova12.txt >gpu_openMPI_socket_default.csv

rm prova*	


cat gpu_openMPI_socket_tcp.out | grep -v ^# | grep -v '^$' >prova.txt

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
sed 's/ /,/g' prova12.txt >gpu_openMPI_socket_tcp.csv

rm prova*	


cat gpu_openMPI_socket_vader.out | grep -v ^# | grep -v '^$' >prova.txt

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
sed 's/ /,/g' prova12.txt >gpu_openMPI_socket_vader.csv

rm prova*	






cat gpu_openMPI_core_default.out | grep -v ^# | grep -v '^$' >prova.txt

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
sed 's/ /,/g' prova12.txt >gpu_openMPI_core_default.csv

rm prova*	


cat gpu_openMPI_core_tcp.out | grep -v ^# | grep -v '^$' >prova.txt

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
sed 's/ /,/g' prova12.txt >gpu_openMPI_core_tcp.csv

rm prova*	

cat gpu_openMPI_core_vader.out | grep -v ^# | grep -v '^$' >prova.txt

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
sed 's/ /,/g' prova12.txt >gpu_openMPI_core_vader.csv


rm prova*	


