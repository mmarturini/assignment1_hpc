#!/bin/bash

mpirun --mca btl ^openib --map-by socket -np 4 ./jacoby3D.x <input.1200 >thin_between_sockets_4.out
mpirun --mca btl ^openib --map-by socket -np 8 ./jacoby3D.x <input.1200 >thin_between_sockets_8.out
mpirun --mca btl ^openib --map-by socket -np 12 ./jacoby3D.x <input.1200 >thin_between_sockets_12.out

