#!/bin/bash
#PBS -q dssc_gpu
#PBS -l nodes=2:ppn=48
#PBS -l walltime=01:00:00

cd $PBS_O_WORKDIR
module load openmpi/4.0.3/gnu/9.3.0
mpif77 -ffixed-line-length-none Jacobi_MPI_vectormode.F -o jacoby3D.x

for p in 1 8 16 24 32 48 64 96; do
  mpirun --mca btl ^openib -np ${p} ./jacoby3D.x <input.1200 >gpu_jacobi_nodes${p}.out
done

