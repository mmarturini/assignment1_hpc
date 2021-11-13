#include<stdlib.h>
#include<stdio.h>
#include<mpi.h>

int main(int argc, char *argv[]) {

	MPI_Init(&argc, &argv);
	int rank,p,i,root=0;
	MPI_Comm_rank(MPI_COMM_WORLD, &rank);
	MPI_Comm_size(MPI_COMM_WORLD, &p);

	//Make local vector size constant
	// local with respect to every process
	int local_vector_size=100;

	//compute global vector size
	int n = p*local_vector_size;

	//initialize the vectors
	double *a,*b;
	a = (double*)malloc(local_vector_size*sizeof(double));
	b = (double*)malloc(local_vector_size*sizeof(double));
	for (i=0; i<local_vecotr_size; i++) {
		a[i] = 3.14*rank;
		b[i] = 6.67*rank;
	}

	// compute the local dot product
	// each process computes the dot product between a adn b
	double partial_sum = 0.0;
	for(i=0; i<local_vector_size; i++) {
		partial_sum += a[i]*b[i];
	}

	double sum=0;
	// MPI_Reduce(const void* sendbuf, void* recvbuf, int count, MPI_Datatype, MPI_Op op, int destination_rank, MPI_Comm comm)
	// takes the content of each partial_sum of every process, perfroms a sum and stores it into variable sum at process destination_rank
	MPI_Reduce(&partial_sum, &sum, 1, MPI_DOUBLE, MPI_SUM, root, MPI_COMM_WORLD);

	if (rank == root) {
		printf("The dot product is %g\n", sum);
	}

	free(a);
	free(b);
	MPI_Finalize();
	return 0;
}
