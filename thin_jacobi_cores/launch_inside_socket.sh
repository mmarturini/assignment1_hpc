#!/bin/bash

module load openmpi/4.0.3/gnu/9.3.0
mpif77 -ffixed-line-length-none Jacobi_MPI_vectormode.F -o jacoby3D.x

mpirun --mca btl ^openib --map-by core -np 4 ./jacoby3D.x <input.1200 >thin_inside_socket_4.out
mpirun --mca btl ^openib --map-by core -np 8 ./jacoby3D.x <input.1200 >thin_inside_socket_8.out
mpirun --mca btl ^openib --map-by core -np 12 ./jacoby3D.x <input.1200 >thin_inside_socket_12.out

