#!/bin/bash
#PBS -q dssc
#PBS -l nodes=1:ppn=24
#PBS -l walltime=00:10:00

cd $PBS_O_WORKDIR
module load openmpi/4.0.3/gnu/9.3.0
mpicc ass1_prob1.c -o ass1_prob1.x

for p in 2 4 6 8 10 12 14 16 18 20 22 24; do
  mpiexec --mca btl ^openib --map-by core -np ${p} ./ass1_prob1.x | grep time >>prob1.out
done 

sed 's/Total elapsed time: //' prob1.out >prob1_mid.out
sed 's/ seconds//' prob1_mid.out >prob1_final.out

