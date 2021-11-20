#include<stdlib.h>
#include<stdio.h>
#include<time.h>
#include<mpi.h>
#include<stdbool.h>
#define N 50

/* FUNCTION TO COMPUTE THE SUM OF TWO 3D MATRICES
*  
* - TOPOLOGY: MPI_Comm for the 1D, 2D and 3D topologies
* - nx      : elements along dimension x
* - ny      : elements along dimension y
* - nz      : elements along dimension z
* - size    : number of processors
* - my_rank : rank of calling processor of MPI_Comm TOPOLOGY
* - root    : master process
*/ 
void matrix_3D_sum(MPI_Comm TOPOLOGY, int nx, int ny, int nz, int size, int my_rank, int root);


// Function to generate random numbers in [0,1]
double rand_num() { return (double)rand() / (double)RAND_MAX;}



int main(int argc, char* argv[]) {

    // Randomize the seed
    time_t t;
    srand((unsigned)time(&t));
    double start, end;
    

    // Initializing parallel environment 
    MPI_Init(&argc, &argv);
    int size, my_rank, root = 0;
    MPI_Comm_size(MPI_COMM_WORLD, &size);
    MPI_Comm_rank(MPI_COMM_WORLD, &my_rank);
    

    // This program is meant to be run on 24 processors
    if (size != 24) {
            printf("This application is meant to be run with 24 processes.\n");
            MPI_Finalize();
            exit(0);
    }


    // Dimensions of matrices
    int nx = 2400, ny = 100, nz = 100;
    int tot_num_elems = nx * ny * nz;
    int elems_per_proc = (nx * ny * nz) / size;


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

    for (int i=0; i<N; i++) {
    matrix_3D_sum(TOPOLOGY_1D, nx, ny, nz, size, topo1d_rank, root);
    }

    MPI_Barrier(TOPOLOGY_1D);
    if (topo1d_rank == root) {
        end = MPI_Wtime();
        printf("1D topology total elapsed time: %f\n", end - start);
    }


    // 2D topology
    MPI_Comm TOPOLOGY_2D;
    int topo2d_ndims = 2;
    int topo2d_dims[2] = { 12, 2 };
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

    for (int i=0; i<N; i++) {
    matrix_3D_sum(TOPOLOGY_2D, nx, ny, nz, size, topo2d_rank, root);
    }

    MPI_Barrier(TOPOLOGY_2D);
    if (topo2d_rank == root) {
        end = MPI_Wtime();
        printf("2D topology total elapsed time: %f\n", end - start);
    }


    // 3D topology
    MPI_Comm TOPOLOGY_3D;
    int topo3d_ndims = 3;
    int topo3d_dims[3] = { 6, 2, 2 };
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

    for(int i=0; i<N; i++) {
    matrix_3D_sum(TOPOLOGY_3D, nx, ny, nz, size, topo3d_rank, root);
    }

    MPI_Barrier(TOPOLOGY_3D);
    if (topo3d_rank == root) {
        end = MPI_Wtime();
        printf("3D topology total elapsed time: %f\n", end - start);
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
}



/* DEBUGGING INFO

for (int i = 0; i < elems_per_proc; i++) {
    printf("I am processor %d and I have A[%d]=%d\n", my_rank, i, recv_buffA[i]);
    printf("I am processor %d and I have B[%d]=%d\n", my_rank, i, recv_buffB[i]);
}

printf("I am processor %d and A[%d] = %d\n", my_rank, k + j * nz + i * nz * ny, A[k + j * nz + i * nz * ny]);


    printf("%d, %d", topo2d_dims[0], topo2d_dims[1]);


            /*
        printf("Resulting matrix C:\n");
        for (int i = 0; i < nx; ++i) {
            for (int j = 0; j < ny; ++j) {
                for (int k = 0; k < nz; ++k) {
                    printf("C[%d][%d][%d] = %f\n", i, j, k, C[k + j * nz + i * nz * ny]);
                }
            }
        }
        */
