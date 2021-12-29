# Foundations of high perfromance computing: assignment 1

The assignment is divided into 3 sections. 

In the first one, two MPI problems are analyzed: the ring problem and the 3D matrix sum problem. The second section consists in analyzing the performance of the different networks available at the ORFEO HPC data cluster using the Intel MPI Ping-Pong benchmark. The last section consists in studying the performance of the Jacobi solver program from the book “Introduction to High Performance Computing for Scientists and Engineers” (https://blogs.fau.de/hager/hpc-book).


## Section 1

`ring.c` file containing the solution to the ring problem.

`sum3Dmatrix.c` file containing solution to 3D matrix sum problem.

`sum3Dmatrix_with_MPI_Dataype.c` file containing solution to 3D matrix sum problem with MPI Datatypes.

To compile the code on the ORFEO HPC cluster, on a computational node, first load an MPI library implementation, for example the Open MPI implementation, as the following
```
module load openmpi/4.0.3/gnu/9.3.0
```
ant then type
```
make
```

To delete all executables created by make, type
```
make clean
```


## Section 2

## Section 3
