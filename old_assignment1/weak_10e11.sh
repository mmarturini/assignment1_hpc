#!/bin/bash
#PBS -q dssc
#PBS -l nodes=1:ppn=48
#PBS -l walltime=10:00:00


cd $PBS_O_WORKDIR
module load   openmpi/4.0.3/gnu/9.3.0

MOVES="100000000000"

for i in 1 2 3; do
  for procs in 1 12 24 48 ; do
    echo -e "\n\nEXECUTING ON " ${procs} "PROCESSORS" >>weak10e11_out.${i}
    /usr/bin/time mpirun --mca btl '^openib' -np ${procs} ./mpi_pi.x  $((MOVES*procs)) >>weak10e11_out.${i}
  done
done



