#!/bin/bash
#PBS -q dssc_gpu
#PBS -l nodes=1:ppn=24
#PBS -l walltime=00:30:00

cd $PBS_O_WORKDIR
module load openmpi/4.0.3/gnu/9.3.0
mpif77 -ffixed-line-length-none Jacobi_MPI_vectormode.F -o jacoby3D.x

for p in 2 4 8 12 16 20 24; do
  mpirun --map-by core --mca btl ^openib -np ${p} ./jacoby3D.x <input.1200 >gpu_jacobi_cores_${p}.out
done

