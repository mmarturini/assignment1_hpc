#!/bin/bash
#PBS -q dssc_gpu
#PBS -l nodes=1:ppn=48
#PBS -l walltime=02:30:00

cd $PBS_O_WORKDIR
module load openmpi/4.0.3/gnu/9.3.0
mpif77 -ffixed-line-length-none Jacobi_MPI_vectormode.F -o jacoby3D.x

mpirun --map-by socket --mca btl ^openib -np 1 ./jacoby3D.x <input.1200 >gpu_weak_jacobi_sockets_1.out
mpirun --map-by socket --mca btl ^openib -np 4 ./jacoby3D.x <input.1905 >gpu_weak_jacobi_sockets_4.out
mpirun --map-by socket --mca btl ^openib -np 8 ./jacoby3D.x <input.2400 >gpu_weak_jacobi_sockets_8.out
mpirun --map-by socket --mca btl ^openib -np 12 ./jacoby3D.x <input.2747 >gpu_weak_jacobi_sockets_12.out
mpirun --map-by socket --mca btl ^openib -np 16 ./jacoby3D.x <input.3024 >gpu_weak_jacobi_sockets_16.out
mpirun --map-by socket --mca btl ^openib -np 20 ./jacoby3D.x <input.3257 >gpu_weak_jacobi_sockets_20.out
mpirun --map-by socket --mca btl ^openib -np 24 ./jacoby3D.x <input.3461 >gpu_weak_jacobi_sockets_24.out
mpirun --map-by socket --mca btl ^openib -np 48 ./jacoby3D.x <input.4361 >gpu_weak_jacobi_sockets_48.out

