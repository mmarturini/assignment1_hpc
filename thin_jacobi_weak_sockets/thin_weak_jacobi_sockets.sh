#!/bin/bash
#PBS -q dssc
#PBS -l nodes=1:ppn=24
#PBS -l walltime=02:00:00

cd $PBS_O_WORKDIR
module load openmpi/4.0.3/gnu/9.3.0
mpif77 -ffixed-line-length-none Jacobi_MPI_vectormode.F -o jacoby3D.x

mpirun --map-by socket --mca btl ^openib -np 1 ./jacoby3D.x <input.1200 >thin_weak_jacobi_sockets_1.out
mpirun --map-by socket --mca btl ^openib -np 4 ./jacoby3D.x <input.1905 >thin_weak_jacobi_sockets_4.out
mpirun --map-by socket --mca btl ^openib -np 8 ./jacoby3D.x <input.2400 >thin_weak_jacobi_sockets_8.out
mpirun --map-by socket --mca btl ^openib -np 12 ./jacoby3D.x <input.2747 >thin_weak_jacobi_sockets_12.out
mpirun --map-by socket --mca btl ^openib -np 16 ./jacoby3D.x <input.3024 >thin_weak_jacobi_sockets_16.out
mpirun --map-by socket --mca btl ^openib -np 20 ./jacoby3D.x <input.3257 >thin_weak_jacobi_sockets_20.out
mpirun --map-by socket --mca btl ^openib -np 24 ./jacoby3D.x <input.3461 >thin_weak_jacobi_sockets_24.out

