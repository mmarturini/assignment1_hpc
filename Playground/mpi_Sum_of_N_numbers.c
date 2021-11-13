#include<stdlib.h>
#include<mpi.h>

int main(int argc, char **argv) {

	int rank, size;
	MPI_Init(&argc, &argv);
	MPI_Comm_rank(MPI_COMM_WORLD, &rank);
	MPI_Comm_size(MPI_COMM_WORLD, &size); //size corresponds to then umber of precesses

	if ( rank == 0 ) {
		int N, np, m, l;
		int *ptr;

		// Initialization of variables		
		N = 100;
		np = size;
		if ( N%size == 0) {
			m = N/np;			
		} else {
			printf("Size of array not divisible by number of processors\n");
			MPI_Finalize();
			exit(0);
		}
		ptr = (int*)malloc(N * sizeof(int));
		for (int i=0; i<N; i++) {
			ptr[i] = i;
		}

		// Decomposition of array into messages to send to each processor
		for (int j=1; j < np+1; j++) {
			int message[m];
			l = 0;
		
			for ( int i = (j-1)*m; i < j*m; i++) {
				message[l] = ptr[i];
				++l;
			} // at the end of the first iteration I have the first message
			  // which I do not have to send cause it's already to the master
			if ( j == 1) {
				break;
			}

			// Send the other blocks to the workers
			MPI_Send(&message, 5, MPI_INT, j, j, MPI_COMM_WORLD);
			MPI_Recv //I need to receive from every other processor and sum the results together
		}
	} else {
		// If I'm not the master, I should receive form the master, compute the seum
		// and send back the result to the mster
	}

	return 0;
}
