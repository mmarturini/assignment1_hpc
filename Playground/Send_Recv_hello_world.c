#include <stdio.h>
#include <stdlib.h>
#include <mpi.h>
#include <string.h>

int main(int argc, char **argv) {

	// these variables are defined before the initialization of the MPI environment
	// and as you can see from later, each process uses it
	// meaning that each process has its own rank and size
	// so everythin that is defined before the MPI_Init is copied into the virtual memory of each process
	int rank, size;
	MPI_Init(&argc, &argv);
	MPI_Comm_rank(MPI_COMM_WORLD, &rank);
	MPI_Comm_size(MPI_COMM_WORLD, &size);

	int message[2]; // buffer for sending and receiving messages
	int dest, src;  // destination and source process variable
	int tag=0;
	MPI_Status status;

	// This example has to be run on more than one process
	if (size==1) {
		printf("This example requires more than one process to execute\n");
		MPI_Finalize();
		exit(0);
	}

	// if not rank 0, send messages to rank 0
	if (rank != 0 ) {
		message[0] = rank;
		message[1] = size;
		dest = 0;   //send all messages to rank 0
		MPI_Send(message, 2, MPI_INT, dest, tag, MPI_COMM_WORLD);
	} 
	else { //if rank=0, receive all messages from everybody else
		for (src=1; src<size; src++) {
			MPI_Recv(message, 2, MPI_INT, src, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
			//this prints the message just received. Notice it will print in rank
			// order since the loop is in rank order
			printf("Hello from process %d of %d\n", message[0], message[1]);
		}
	}

	MPI_Finalize();
	return 0;
}
