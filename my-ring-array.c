#include<stdio.h>
#include<mpi.h>
#include<unistd.h> //contains sleep() routine
#include<stdbool.h>

int main (int argc, char* argv[]) {

	MPI_Init(&argc, &argv);
	int rank, numprocs, root=0;
	MPI_Comm_rank(MPI_COMM_WORLD, &rank);
	MPI_Comm_size(MPI_COMM_WORLD, &numprocs);

	// Creation of the cartesian communicator, which will be stored in ring
	MPI_Comm ring;
	int ndims=1;
	const int dims[1] = {numprocs};
	const int periods[1] = {true};
	int reorder = false;	
	MPI_Cart_create(MPI_COMM_WORLD, ndims, dims, periods, reorder, &ring);

	// Taking the coordinate of each process in the cartesian communicator
	// and the corresponding rank
	int coords[1];
	int ring_rank;
	MPI_Cart_coords(ring, rank, 1, coords);
	MPI_Cart_rank(ring, coords, &ring_rank);  

	// To print in order
	int time_to_sleep = 1*rank;
	sleep(time_to_sleep);
	// using rank it's wrong cause it will give me the ranks of the COMM_WORLD_COMM
	// but i want the rank in the ring communicator
	printf("I am processor %u in coordinate %u \n",ring_rank, coords[0]);
	
	// Synchronizing all processes
	MPI_Barrier(MPI_COMM_WORLD);
	MPI_Barrier(ring);
 
	// Testing the MPI_Cart_shift routine to check if it's actually a ring
	int direction = 0, disp = 1; // moving to the right by one
	int dest_rank;
	MPI_Cart_shift(ring, direction, disp, &rank, &dest_rank);

	time_to_sleep = 1*ring_rank;
	sleep(time_to_sleep); 
	printf("I am %u, and I moved to %u\n", ring_rank, dest_rank);

	MPI_Finalize();
	return 0;
}
