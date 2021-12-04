#!/bin/bash
#PBS -q dssc
#PBS -l nodes=2:ppn=24
#PBS -l walltime=02:00:00

cd $PBS_O_WORKDIR
module load openmpi/4.0.3/gnu/9.3.0
mpif77 -ffixed-line-length-none Jacobi_MPI_vectormode.F -o jacoby3D.x

mpirun --map-by node --mca pml ob1 --mca btl self,tcp -np 1 ./jacoby3D.x <input.1200 >thin_jacobi_strong_nodes_tcp_1.out
mpirun --map-by node --mca pml ob1 --mca btl self,tcp -np 8 ./jacoby3D.x <input.1200 >thin_jacobi_strong_nodes_tcp_8.out
mpirun --map-by node --mca pml ob1 --mca btl self,tcp -np 16 ./jacoby3D.x <input.1200 >thin_jacobi_strong_nodes_tcp_16.out
mpirun --map-by node --mca pml ob1 --mca btl self,tcp -np 24 ./jacoby3D.x <input.1200 >thin_strong_jacobi_nodes_tcp_24.out
mpirun --map-by node --mca pml ob1 --mca btl self,tcp -np 30 ./jacoby3D.x <input.1200 >thin_jacobi_strong_nodes_tcp_30.out
mpirun --map-by node --mca pml ob1 --mca btl self,tcp -np 48 ./jacoby3D.x <input.1200 >thin_jacobi_strong_nodes_tcp_48.out

