#include<stdlib.h>
#include<stdio.h>
#include<time.h>
#include<mpi.h>
#include<stdbool.h>


/* FUNCTION TO COMPUTE THE SUM OF TWO 3D MATRICES
*  
* - TOPOLOGY: MPI_Comm for the 1D, 2D and 3D topologies
* - nx      : elements along dimension x
* - ny      : elements along dimension y
* - nz      : elements along dimension z
* - size    : number of processors
* - my_rank : rank of calling process of MPI_Comm TOPOLOGY
* - root    : master process
*/ 
void matrix_3D_sum(MPI_Comm TOPOLOGY, int nx, int ny, int nz, int size, int my_rank, int root);


// Function to generate random numbers in [0,1]
double rand_num() { return (double)rand() / (double)RAND_MAX;}



int main(int argc, char* argv[]) {

    // Randomize seed
    time_t t;
    srand((unsigned)time(&t));
    double start, end;
 
    // Initializing parallel environment 
    MPI_Init(&argc, &argv);
    int size, my_rank, root = 0;
    MPI_Comm_size(MPI_COMM_WORLD, &size);
    MPI_Comm_rank(MPI_COMM_WORLD, &my_rank);
 
    // Input check
    if ( argc != 4 ) {
	if ( my_rank == 0 ) {
		printf("ERROR: WRONG INPUT ARGUMENTS\n mpiexec -np np ./sum3Dmatrix.x nx ny nz\n");
		printf("Example: mpiexec -np 8 --mca btl ^openib ./sum3Dmatrix.x 2400 100 100\n");
        }
       MPI_Finalize();
       exit(0);
    } 

    int nx = atoi(argv[1]);
    int ny = atoi(argv[2]);
    int nz = atoi(argv[3]);
    int tot_num_elems = nx * ny * nz;
    if ( tot_num_elems % size != 0 ) {
	if ( my_rank == 0) 
	    printf("ERROR: Total number of elements not divisible by number of processors.\n");
	MPI_Finalize();
	exit(0);
    }

    int elems_per_proc = (nx * ny * nz) / size;
    if ( my_rank == root ) {
        printf("\nEntered dimensions:\nDim1: %d\nDim2: %d\nDim3: %d\n\n", nx, ny, nz);
    }
 
    // 1D topology
    MPI_Comm TOPOLOGY_1D;
    int topo1d_ndims = 1;  					
    const int topo1d_dims[1] = { size };	
    const int periods[1] = { false };	
    int reorder = true;				
    MPI_Cart_create(MPI_COMM_WORLD, topo1d_ndims, topo1d_dims, periods, reorder, &TOPOLOGY_1D);
    int topo1d_coords[1];	
    int topo1d_rank;									
    MPI_Comm_rank(TOPOLOGY_1D, &topo1d_rank);
    MPI_Cart_coords(TOPOLOGY_1D, topo1d_rank, topo1d_ndims, topo1d_coords);

    MPI_Barrier(TOPOLOGY_1D);
    if (topo1d_rank == root) {
        start = MPI_Wtime();
    }

    matrix_3D_sum(TOPOLOGY_1D, nx, ny, nz, size, topo1d_rank, root);

    MPI_Barrier(TOPOLOGY_1D);
    if (topo1d_rank == root) {
        end = MPI_Wtime();
        printf("1D topology total elapsed time: %0.3f seconds\n", end - start);
    }


    // 2D topology
    MPI_Comm TOPOLOGY_2D;
    int topo2d_ndims = 2;
    int topo2d_dims[2] = { 0, 0 };
    MPI_Dims_create(size, topo2d_ndims, topo2d_dims);
    const int topo2d_periods[2] = { false, false };
    MPI_Cart_create(MPI_COMM_WORLD, topo2d_ndims, topo2d_dims, topo2d_periods, reorder, &TOPOLOGY_2D);
    int topo2d_coords[2];
    int topo2d_rank;
    MPI_Comm_rank(TOPOLOGY_2D, &topo2d_rank);
    MPI_Cart_coords(TOPOLOGY_2D, topo2d_rank, topo2d_ndims, topo2d_coords);

    MPI_Barrier(TOPOLOGY_2D);
    if (topo2d_rank == root) {
        start = MPI_Wtime();
    }

    matrix_3D_sum(TOPOLOGY_2D, nx, ny, nz, size, topo2d_rank, root);

    MPI_Barrier(TOPOLOGY_2D);
    if (topo2d_rank == root) {
        end = MPI_Wtime();
        printf("2D topology total elapsed time: %0.3f seconds\n", end - start);
    }


    // 3D topology
    MPI_Comm TOPOLOGY_3D;
    int topo3d_ndims = 3;
    int topo3d_dims[3] = { 0, 0, 0 };
    const int topo3d_periods[3] = { false, false, false };
    MPI_Dims_create(size, topo3d_ndims, topo3d_dims);
    MPI_Cart_create(MPI_COMM_WORLD, topo3d_ndims, topo3d_dims, topo3d_periods, reorder, &TOPOLOGY_3D);
    int topo3d_coords[3];
    int topo3d_rank;
    MPI_Comm_rank(TOPOLOGY_3D, &topo3d_rank);
    MPI_Cart_coords(TOPOLOGY_3D, topo3d_rank, topo3d_ndims, topo3d_coords);

    MPI_Barrier(TOPOLOGY_3D);
    if (topo3d_rank == root) {
        start = MPI_Wtime();
    }

    matrix_3D_sum(TOPOLOGY_3D, nx, ny, nz, size, topo3d_rank, root);

    MPI_Barrier(TOPOLOGY_3D);
    if (topo3d_rank == root) {
        end = MPI_Wtime();
        printf("3D topology total elapsed time: %0.3f seconds\n\n", end - start);
    }


    MPI_Finalize();
    return 0;
}





void matrix_3D_sum(MPI_Comm COMM, int nx, int ny, int nz, int size, int my_rank, int root) {

    int tot_num_elems = nx * ny * nz;
    int elems_per_proc = (nx * ny * nz) / size;
    
    double* recv_buffA = (double*)malloc(sizeof(double) * elems_per_proc);
    double* recv_buffB = (double*)malloc(sizeof(double) * elems_per_proc);
    
    // If I am root, I allocate the matrices
    if (my_rank == root) {
        double* A = (double*)malloc(sizeof(double) * tot_num_elems);
        double* B = (double*)malloc(sizeof(double) * tot_num_elems);

        for (int i = 0; i < nx; ++i) {
            for (int j = 0; j < ny; ++j) {
                for (int k = 0; k < nz; ++k) {
                    A[k + j * nz + i * nz * ny] = rand_num();
                    B[k + j * nz + i * nz * ny] = rand_num();
                }
            }
        }

        MPI_Scatter(A, elems_per_proc, MPI_DOUBLE, recv_buffA, elems_per_proc, MPI_DOUBLE, root, MPI_COMM_WORLD);
        MPI_Scatter(B, elems_per_proc, MPI_DOUBLE, recv_buffB, elems_per_proc, MPI_DOUBLE, root, MPI_COMM_WORLD);
    }
    else {
        MPI_Scatter(NULL, elems_per_proc, MPI_DOUBLE, recv_buffA, elems_per_proc, MPI_DOUBLE, root, MPI_COMM_WORLD);
        MPI_Scatter(NULL, elems_per_proc, MPI_DOUBLE, recv_buffB, elems_per_proc, MPI_DOUBLE, root, MPI_COMM_WORLD);
    }


    // Performing the sum of the matrices at block level
    double* block_sums = (double*)malloc(sizeof(double) * elems_per_proc);
    for (int i = 0; i < elems_per_proc; ++i) {
        block_sums[i] = recv_buffA[i] + recv_buffB[i];
    }

    // Gathering the blocks in root
    if (my_rank == root) {
        double* C = (double*)malloc(sizeof(double) * tot_num_elems);
        MPI_Gather(block_sums, elems_per_proc, MPI_DOUBLE, C, elems_per_proc, MPI_DOUBLE, root, MPI_COMM_WORLD);
    } 
    else {
        MPI_Gather(block_sums, elems_per_proc, MPI_DOUBLE, NULL, 0, MPI_DOUBLE, root, MPI_COMM_WORLD);
    }

    free(recv_buffA);
    free(recv_buffB);
    free(block_sums);
}


