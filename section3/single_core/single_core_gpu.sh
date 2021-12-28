#!/bin/bash
#PBS -q dssc_gpu
#PBS -l nodes=1:ppn=1
#PBS -l walltime=00:30:00

cd $PBS_O_WORKDIR

module load openmpi/4.0.3/gnu/9.3.0
mpif77 -ffixed-line-length-none Jacobi_MPI_vectormode.F -o jacoby3D.x
mpirun --mca btl ^openib -np 1 ./jacoby3D.x <input.1200 >single_core_gpu.out
