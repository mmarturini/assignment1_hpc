#include<stdio.h>
#include<mpi.h>

int main(int argc, char *argv[]) {

	int rank,size, len;
	MPI_Init(&argc, &argv);
	char name[MPI_MAX_PROCESSOR_NAME]; //MPI constant that specify the greatest possible le
					  // of the char string representing processor name
	MPI_Barrier(MPI_COMM_WORLD);

	MPI_Comm_rank(MPI_COMM_WORLD, &rank);
	MPI_Comm_size(MPI_COMM_WORLD, &size);
	MPI_Get_processor_name(name, &len); // char string that MPI uses to identify each processor core uniquely
	// there is a difference between the abstraction of executing processes and physical
	// processor core upon which process is computing
	//
	
	MPI_Barrier(MPI_COMM_WORLD);

	printf("Hello, world! Process %d of %d on %s\n", rank, size, name);

	MPI_Finalize();
	return 0;
}
