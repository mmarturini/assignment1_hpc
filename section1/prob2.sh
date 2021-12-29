#!/bin/bash
#PBS -q dssc
#PBS -l nodes=1:ppn=24
#PBS -l walltime=01:00:00

cd $PBS_O_WORKDIR
module load openmpi/4.0.3/gnu/9.3.0
mpicc prob2stdin.c -o prob2stdin.x

for p in 1 2 4 8 12 24 ; do
  mpiexec --mca btl ^openib -np ${p} ./prob2stdin.x 2400 100 100 | grep time >>prob2.out
done 


