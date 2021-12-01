#!/bin/bash
#PBS -q dssc_gpu
#PBS -l nodes=1:ppn=48
#PBS -l walltime=00:30:00

cd $PBS_O_WORKDIR
module load openmpi/4.0.3/gnu/9.3.0
mpif77 -ffixed-line-length-none Jacobi_MPI_vectormode.F -o jacoby3D.x

for p in 4 8 12 16 24 48; do
  mpirun --mca btl ^openib --map-by socket -np ${p} ./jacoby3D.x <input.1200 >gpu_jacobi_socket${p}.out
done

