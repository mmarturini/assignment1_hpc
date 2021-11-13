#!/bin/bash
#PBS -l nodes=1:ppn=1
#PBS -l walltime=00:10:00

cd $PBS_O_WORKDIR
module load   openmpi/4.0.3/gnu/9.3.0

for i in 1 2 3 4 5 6 7 8 9 10; do 
/usr/bin/time ./pi.x 100000000  >pi_out.${i}
/usr/bin/time mpirun -np 1 ./mpi_pi.x 100000000 >mpi_out.${i}
done
