# Foundations of high perfromance computing: assignment 1

The assignment is divided into 3 sections. 

In the first one, two MPI problems are analyzed: the ring problem and the 3D matrix sum problem. The second section consists in analyzing the performance of the different networks available at the ORFEO HPC data cluster using the Intel MPI Ping-Pong benchmark. The last section consists in studying the performance of the Jacobi solver program from the book “Introduction to High Performance Computing for Scientists and Engineers” (https://blogs.fau.de/hager/hpc-book).

(link to the repository of this assignment: https://github.com/mmarturini/assignment1_hpc)


## Section 1

`ring.c` file containing the solution to the ring problem.

`sum3Dmatrix.c` file containing the solution to 3D matrix sum problem.

`sum3Dmatrix_with_MPI_Dataype.c` file containing the solution to 3D matrix sum problem with MPI Datatypes.

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

Section 2 is divided into 4 directories depending on the implementation of the MPI standard used (Open MPI or Intel MPI) and the type of the node of the ORFEO cluster on which the Ping-Pong benchmark is run (thin or gpu).

In each of the directory there is a `fit_function.ipynb` file inside which will be found all the fit of the communication time model for all the possible combinations as required by the assignment; moreover, there will also be the `.sh` files used to gather the data and the `.csv` files containing the outputs. 

## Section 3

In each of the directory of section 3 there is a `Jacobi_performance.ipynb` file containig the code for analyzing the performance of the Jacobi solver, `.sh` files to gather data and transforming it into a csv file, and all the `.csv` files containing the output.
 
