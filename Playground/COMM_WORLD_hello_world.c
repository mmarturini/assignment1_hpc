#include<stdio.h>
#include <mpi.h>

//for every process that exist in MPI_COMM_WORLD, identify itself by printing something

int main(int argc, char **argv) {

	//every process defines in its private memory a variable called rank and size
	int rank, size;
	MPI_Init(&argc,&argv);
	MPI_Comm_rank(MPI_COMM_WORLD, &rank);
	MPI_Comm_size(MPI_COMM_WORLD, &size);
	printf("Hello from rank %d out of %d processors in MPI_COMM_WOORLD \n", rank,size);
	MPI_Finalize();
	return 0;
	
}
