#!/bin/bash
#PBS -q dssc
#PBS -l nodes=1:ppn=1
#PBS -l walltime=00:02:00

cd $PBS_O_WORKDIR
gcc test_bash_script.c -o test_bash_script.x

./test_bash_script.x >test_bash_out2.txt

