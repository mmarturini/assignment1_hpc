#include<stdio.h>
#include<stdlib.h>
#include<mpi.h>

// Example of nonblocking communication to be used on 2 processes
// For both processes the send commands are issued first, followed by the recv command
// If we were using blocking communication with same order, it would end up in a deadlock
// Cause process 0 send message to process 1, but process 1 send message to process 0
// both these routines do not return because both are still inside the send and cannot receive
// To solve the problem you can swap the order of send and receive in process 1, or use
// nonblocking communication



int main(int argc, char **argv) {

	int a,b;
	int size, rank;
	int tag=0;
	MPI_Status status;
	MPI_Request send_request, recv_request;

	MPI_Init(&argc,&argv);
	MPI_Comm_size(MPI_COMM_WORLD, &size);
	MPI_Comm_rank(MPI_COMM_WORLD, &rank);

	if (size!=2) {
		printf("This example is designed for 2 processors\n");
		MPI_Finalize();
		exit(0);
	}

	if ( rank == 0 ) {
		a = 10000; // arbitrary value

		// when I'm not allocating dynamically, I need to pass a pointer to the message
		// I'm sending, casue the routine requires a pointer, so I pass with & so that
		// I'm passing the address of a
		//
		//  If I am process 0, I'm sending value 10000 to process 1
		//  And I'm receveing from process 1 an MPI_INT that I'm storing inside b
		MPI_Isend(&a, 1, MPI_INT, 1, tag, MPI_COMM_WORLD, &send_request);
		MPI_Irecv(&b, 1, MPI_INT, 1, tag, MPI_COMM_WORLD, &recv_request);

		// Before printing the values, I must be sure that the routines are returned
		// Hence I use MPI_Wait
		MPI_Wait(&send_request, &status);
		MPI_Wait(&recv_request, &status);
		printf("Process %d received value %d\n", rank, b); 
	}
	else {
		// I am processor 1, in my memory I create variable a = 667
		// I send a to processor 0, and I receive form processor 0 a MPI_INT 
		// which I store in b
		a = 667;

		MPI_Isend(&a, 1, MPI_INT, 0, tag, MPI_COMM_WORLD, &send_request);
		MPI_Irecv(&b, 1, MPI_INT, 0, tag, MPI_COMM_WORLD, &recv_request);

		MPI_Wait(&send_request, &status);
		MPI_Wait(&recv_request, &status);
		printf("Process %d received value %d", rank, b);
	}

	MPI_Finalize();
	return 0;
}
