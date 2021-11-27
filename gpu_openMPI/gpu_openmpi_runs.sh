#!/bin/bash

# NODE
mpirun -np 2 --map-by node --mca btl ^openib ./IMB-MPI1 PingPong -msglog 28 >gpu_openMPI_node_default.out

mpirun -np 2 --map-by node --mca pml ob1 --mca btl self,tcp ./IMB-MPI1 PingPong -msglog 28 >gpu_openMPI_node_tcp.out

# SOCKET
mpirun -np 2 --map-by socket --mca btl ^openib ./IMB-MPI1 PingPong -msglog 28 >gpu_openMPI_socket_default.out

mpirun -np 2 --map-by socket --mca pml ob1 --mca btl self,tcp ./IMB-MPI1 PingPong -msglog 28 >gpu_openMPI_socket_tcp.out

mpirun -np 2 --map-by socket --mca pml ob1 --mca btl self,vader ./IMB-MPI1 PingPong -msglog 28 >gpu_openMPI_socket_vader.out

# CORE
mpirun -np 2 --map-by core --mca btl ^openib ./IMB-MPI1 PingPong -msglog 28 >gpu_openMPI_core_default.out

mpirun -np 2 --map-by core --mca pml ob1 --mca btl self,tcp ./IMB-MPI1 PingPong -msglog 28 >gpu_openMPI_core_tcp.out

mpirun -np 2 --map-by core --mca pml ob1 --mca btl self,vader ./IMB-MPI1 PingPong -msglog 28 >gpu_openMPI_core_vader.out

