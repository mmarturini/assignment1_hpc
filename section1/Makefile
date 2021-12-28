all: ring sum3Dmatrix sum3Dmatrix_with_MPI_Datatype

ring: ring.c
	mpicc -o ring ring.c

sum3Dmatrix: sum3Dmatrix.c
	mpicc -o sum3Dmatrix sum3Dmatrix.c

sum3Dmatrix_with_MPI_Datatype: sum3Dmatrix_with_MPI_Datatype.c
	mpicc -o sum3Dmatrix_with_MPI_Datatype sum3Dmatrix_with_MPI_Datatype.c

.PHONY : clean
clean :
	-rm ring sum3Dmatrix sum3Dmatrix_with_MPI_Datatype
