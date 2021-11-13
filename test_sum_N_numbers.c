#include<stdio.h>
#include<stdlib.h>

int main(int argc, char *argv[]) {

    int N, np, m, l;
    int *ptr;

    N = 20;
    np = 4;
    m = N/np;
    ptr = (int*)malloc(N * sizeof(int));
    for( int i=0; i<N; i++) {
        ptr[i] = i;
    }


    for (int j=1; j<np+1; j++) {
        
        int message[5];
        l = 0;

        for (int i=(j-1)*m; i<j*m; i++) {
            message[l] = ptr[i];
            ++l;
        }

        printf("Message %d is: ", j);
        for( int i=0; i<m; i++) {
            printf("%d ", message[i]);
        }
        printf("\n");
    }

    free(ptr);
    return 0;
}