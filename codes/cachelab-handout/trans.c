/* 
 * trans.c - Matrix transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 16 bytes.
 */ 
#include <stdio.h>
#include "cachelab.h"

int is_transpose(int M, int N, int A[N][M], int B[M][N]);

/* 
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded. 
 */
char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, k, m, x, y, v5,v6,v3,v4,v7;
    if(M==32){
        for(i=0;i<M;i+=8){
            for(m=0;m<N;m+=8){
                for(j=0;j<8;++j){
                    k=A[m][i+j];
                    x=A[1+m][i+j];
                    y=A[2+m][i+j];
                    v3=A[3+m][i+j];
                    v4=A[4+m][i+j];
                    v5=A[m+5][i+j];
                    v6=A[6+m][i+j];
                    v7=A[7+m][i+j];
                    B[i+j][m]=k;
                    B[i+j][m+1]=x;
                    B[i+j][m+2]=y;
                    B[i+j][m+3]=v3;
                    B[i+j][m+4]=v4;
                    B[i+j][m+5]=v5;
                    B[i+j][m+6]=v6;
                    B[i+j][m+7]=v7;
                }
            }
        }
    }
    if(M==64){
        for(i=0;i<M;i+=4){
            for(m=0;m<N;m+=4){
                for(j=0;j<4;++j){
                    k=A[m][i+j];
                    x=A[1+m][i+j];
                    y=A[2+m][i+j];
                    v3=A[3+m][i+j];
                    B[i+j][m]=k;
                    B[i+j][m+1]=x;
                    B[i+j][m+2]=y;
                    B[i+j][m+3]=v3;
                }
            }
        }
    }
    if(M!=N){
    for (i=0;i<M;i+=16){
        for(m=0;m<N;m+=16){
            for(j=0;j<16;++j){
                if(i+j>=M)break;
                for(k=0;k<16;++k){
                    x = m+k;
                    y = i+j;
                    if(m+k>=N)break;
                    B[y][x] = A[x][y];
                }
            }
        }
    }}
}

/* 
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started. 
 */ 

/* 
 * trans - A simple baseline transpose function, not optimized for the cache.
 */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, tmp;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; j++) {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }    

}

/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions()
{
    /* Register your solution function */
    registerTransFunction(transpose_submit, transpose_submit_desc); 

    /* Register any additional transpose functions */
    registerTransFunction(trans, trans_desc); 

}

/* 
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N])
{
    int i, j;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; ++j) {
            if (A[i][j] != B[j][i]) {
                return 0;
            }
        }
    }
    return 1;
}

