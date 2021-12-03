#!/bin/bash
#PBS -q dssc
#PBS -l nodes=2:ppn=24
#PBS -l walltime=03:00:00

cd $PBS_O_WORKDIR
module load openmpi/4.0.3/gnu/9.3.0
mpif77 -ffixed-line-length-none Jacobi_MPI_vectormode.F -o jacoby3D.x

mpirun --map-by node --mca btl ^openib -np 1 ./jacoby3D.x <input.1200 >thin_weak_jacobi_nodes_1.out
mpirun --map-by node --mca btl ^openib -np 8 ./jacoby3D.x <input.2400 >thin_weak_jacobi_nodes_8.out
mpirun --map-by node --mca btl ^openib -np 16 ./jacoby3D.x <input.3024 >thin_weak_jacobi_nodes_16.out
mpirun --map-by node --mca btl ^openib -np 24 ./jacoby3D.x <input.3461 >thin_weak_jacobi_nodes_24.out
mpirun --map-by node --mca btl ^openib -np 48 ./jacoby3D.x <input.4361 >thin_weak_jacobi_nodes_48.out

