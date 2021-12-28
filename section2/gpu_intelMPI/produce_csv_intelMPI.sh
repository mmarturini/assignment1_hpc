#!/bin/bash

sed '1,8d' gpu_intelMPI_node_default.out >test.txt
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
sed 's/ /,/g' prova12.txt >gpu_intelMPI_node_default.csv
rm prova* 
rm test.txt

sed '1,8d' gpu_intelMPI_node_mlx.out >test.txt
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
sed 's/ /,/g' prova12.txt >gpu_intelMPI_node_mlx.csv
rm prova* 
rm test.txt

sed '1,8d' gpu_intelMPI_node_tcp.out >test.txt
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
sed 's/ /,/g' prova12.txt >gpu_intelMPI_node_tcp.csv
rm prova* 
rm test.txt

sed '1,8d' gpu_intelMPI_node_verbs.out >test.txt
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
sed 's/ /,/g' prova12.txt >gpu_intelMPI_node_verbs.csv
rm prova* 
rm test.txt





sed '1,8d' gpu_intelMPI_socket_0_1_default.out >test.txt
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
sed 's/ /,/g' prova12.txt >gpu_intelMPI_socket_0_1_default.csv
rm prova* 
rm test.txt

sed '1,8d' gpu_intelMPI_socket_0_1_mlx.out >test.txt
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
sed 's/ /,/g' prova12.txt >gpu_intelMPI_socket_0_1_mlx.csv
rm prova* 
rm test.txt

sed '1,8d' gpu_intelMPI_socket_0_1_ofi.out >test.txt
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
sed 's/ /,/g' prova12.txt >gpu_intelMPI_socket_0_1_ofi.csv
rm prova* 
rm test.txt

sed '1,8d' gpu_intelMPI_socket_0_1_shm.out >test.txt
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
sed 's/ /,/g' prova12.txt >gpu_intelMPI_socket_0_1_shm.csv
rm prova* 
rm test.txt

sed '1,8d' gpu_intelMPI_socket_0_1_tcp.out >test.txt
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
sed 's/ /,/g' prova12.txt >gpu_intelMPI_socket_0_1_tcp.csv
rm prova* 
rm test.txt

sed '1,8d' gpu_intelMPI_socket_0_1_verbs.out >test.txt
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
sed 's/ /,/g' prova12.txt >gpu_intelMPI_socket_0_1_verbs.csv
rm prova* 
rm test.txt

sed '1,8d' gpu_intelMPI_socket_0_23_default.out >test.txt
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
sed 's/ /,/g' prova12.txt >gpu_intelMPI_socket_0_23_default.csv
rm prova* 
rm test.txt

sed '1,8d' gpu_intelMPI_socket_0_23_mlx.out >test.txt
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
sed 's/ /,/g' prova12.txt >gpu_intelMPI_socket_0_23_mlx.csv
rm prova* 
rm test.txt

sed '1,8d' gpu_intelMPI_socket_0_23_ofi.out >test.txt
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
sed 's/ /,/g' prova12.txt >gpu_intelMPI_socket_0_23_ofi.csv
rm prova* 
rm test.txt

sed '1,8d' gpu_intelMPI_socket_0_23_shm.out >test.txt
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
sed 's/ /,/g' prova12.txt >gpu_intelMPI_socket_0_23_shm.csv
rm prova* 
rm test.txt

sed '1,8d' gpu_intelMPI_socket_0_23_tcp.out >test.txt
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
sed 's/ /,/g' prova12.txt >gpu_intelMPI_socket_0_23_tcp.csv
rm prova* 
rm test.txt

sed '1,8d' gpu_intelMPI_socket_0_23_verbs.out >test.txt
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
sed 's/ /,/g' prova12.txt >gpu_intelMPI_socket_0_23_verbs.csv
rm prova* 
rm test.txt






sed '1,8d' gpu_intelMPI_core_0_2_default.out >test.txt
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
sed 's/ /,/g' prova12.txt >gpu_intelMPI_core_0_2_default.csv
rm prova* 
rm test.txt

sed '1,8d' gpu_intelMPI_core_0_2_mlx.out >test.txt
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
sed 's/ /,/g' prova12.txt >gpu_intelMPI_core_0_2_mlx.csv
rm prova* 
rm test.txt

sed '1,8d' gpu_intelMPI_core_0_2_ofi.out >test.txt
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
sed 's/ /,/g' prova12.txt >gpu_intelMPI_core_0_2_ofi.csv
rm prova* 
rm test.txt

sed '1,8d' gpu_intelMPI_core_0_2_shm.out >test.txt
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
sed 's/ /,/g' prova12.txt >gpu_intelMPI_core_0_2_shm.csv
rm prova* 
rm test.txt

sed '1,8d' gpu_intelMPI_core_0_2_tcp.out >test.txt
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
sed 's/ /,/g' prova12.txt >gpu_intelMPI_core_0_2_tcp.csv
rm prova* 
rm test.txt

sed '1,8d' gpu_intelMPI_core_0_2_verbs.out >test.txt
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
sed 's/ /,/g' prova12.txt >gpu_intelMPI_core_0_2_verbs.csv
rm prova* 
rm test.txt

sed '1,8d' gpu_intelMPI_core_0_22_default.out >test.txt
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
sed 's/ /,/g' prova12.txt >gpu_intelMPI_core_0_22_default.csv
rm prova* 
rm test.txt

sed '1,8d' gpu_intelMPI_core_0_22_mlx.out >test.txt
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
sed 's/ /,/g' prova12.txt >gpu_intelMPI_core_0_22_mlx.csv
rm prova* 
rm test.txt

sed '1,8d' gpu_intelMPI_core_0_22_ofi.out >test.txt
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
sed 's/ /,/g' prova12.txt >gpu_intelMPI_core_0_22_ofi.csv
rm prova* 
rm test.txt

sed '1,8d' gpu_intelMPI_core_0_22_shm.out >test.txt
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
sed 's/ /,/g' prova12.txt >gpu_intelMPI_core_0_22_shm.csv
rm prova* 
rm test.txt

sed '1,8d' gpu_intelMPI_core_0_22_tcp.out >test.txt
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
sed 's/ /,/g' prova12.txt >gpu_intelMPI_core_0_22_tcp.csv
rm prova* 
rm test.txt

sed '1,8d' gpu_intelMPI_core_0_22_verbs.out >test.txt
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
sed 's/ /,/g' prova12.txt >gpu_intelMPI_core_0_22_verbs.csv
rm prova* 
rm test.txt



	
