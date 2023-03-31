/* 
 * trans.c - Matrix transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
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
    int i, j, k, m, x, y, v5, v6, v3, v4, v7, v8;
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
        for(j=0;j<M;j+=8){
            for(i=0;i<N;i+=8){
                if(i==j){
                    //k=0;m=0;
                    for(v8=0;v8<4;v8+=2){
                        x=A[i+v8][j];
                        y=A[i+v8][j+1];
                        v3=A[i+v8][j+2];
                        v4=A[i+v8][j+3];
                        v5=A[i+v8+1][j];
                        v6=A[i+v8+1][j+1];
                        v7=A[i+v8+1][j+2];
                        k=A[i+v8+1][j+3];
                        B[j][i+v8]=x;
                        B[j+1][i+v8]=y;
                        B[j+2][i+v8]=v3;
                        B[j+3][i+v8]=v4;
                        B[j][i+v8+1]=v5;
                        B[j+1][i+v8+1]=v6;
                        B[j+2][i+v8+1]=v7;
                        B[j+3][i+v8+1]=k;
                    }
                    //k=4;m=0;
                    for(v8=0;v8<4;++v8){
                        x=A[i+4+v8][j];
                        y=A[i+4+v8][j+1];
                        v3=A[i+4+v8][j+2];
                        v4=A[i+4+v8][j+3];
                        B[j][i+4+v8]=x;
                        B[j+1][i+4+v8]=y;
                        B[j+2][i+4+v8]=v3;
                        B[j+3][i+4+v8]=v4;
                    }
                    //k=0;m=4;
                    for(v8=0;v8<4;v8+=2){
                        x=A[i+v8][j+4];
                        y=A[i+v8][j+4+1];
                        v3=A[i+v8][j+4+2];
                        v4=A[i+v8][j+4+3];
                        v5=A[i+v8+1][j+4];
                        v6=A[i+v8+1][j+4+1];
                        v7=A[i+v8+1][j+4+2];
                        k=A[i+v8+1][j+4+3];
                        B[j+4][i+v8]=x;
                        B[j+4+1][i+v8]=y;
                        B[j+4+2][i+v8]=v3;
                        B[j+4+3][i+v8]=v4;
                        B[j+4][i+v8+1]=v5;
                        B[j+4+1][i+v8+1]=v6;
                        B[j+4+2][i+v8+1]=v7;
                        B[j+4+3][i+v8+1]=k;
                    }
                    //k=4;m=4;
                    for(v8=0;v8<4;++v8){
                        x=A[i+4+v8][j+4];
                        y=A[i+4+v8][j+4+1];
                        v3=A[i+4+v8][j+4+2];
                        v4=A[i+4+v8][j+4+3];
                        B[j+4][i+4+v8]=x;
                        B[j+4+1][i+4+v8]=y;
                        B[j+4+2][i+4+v8]=v3;
                        B[j+4+3][i+4+v8]=v4;
                    }
                } else {
                    //k=0;m=0;
                    v5=A[i][j+4];
                    v6=A[i][j+5];
                    v7=A[i][j+6];
                    k=A[i][j+7];
                    x=A[i+1][j+4];
                    y=A[i+1][j+5];
                    v3=A[i+1][j+6];
                    v4=A[i+1][j+7];
                    for(v8=0;v8<4;++v8){
                        B[j][i+v8]=A[i+v8][j];
                        B[j+1][i+v8]=A[i+v8][j+1];
                        B[j+2][i+v8]=A[i+v8][j+2];
                        B[j+3][i+v8]=A[i+v8][j+3];
                    }
                    //k=4;m=0;
                    for(v8=0;v8<4;++v8){
                        B[j][i+4+v8]=A[i+4+v8][j];
                        B[j+1][i+4+v8]=A[i+4+v8][j+1];
                        B[j+2][i+4+v8]=A[i+4+v8][j+2];
                        B[j+3][i+4+v8]=A[i+4+v8][j+3];
                    }
                    //k=4;m=4;
                    for(v8=0;v8<4;++v8){
                        B[j+4][i+4+v8]=A[i+4+v8][j+4];
                        B[j+4+1][i+4+v8]=A[i+4+v8][j+4+1];
                        B[j+4+2][i+4+v8]=A[i+4+v8][j+4+2];
                        B[j+4+3][i+4+v8]=A[i+4+v8][j+4+3];
                    }
                    //k=0;m=4;
                    B[j+4][i]=v5;
                    B[j+4+1][i]=v6;
                    B[j+4+2][i]=v7;
                    B[j+4+3][i]=k;
                    B[j+4][i+1]=x;
                    B[j+4+1][i+1]=y;
                    B[j+4+2][i+1]=v3;
                    B[j+4+3][i+1]=v4;
                    for(v8=2;v8<4;++v8){
                        B[j+4][i+v8]=A[i+v8][j+4];
                        B[j+4+1][i+v8]=A[i+v8][j+4+1];
                        B[j+4+2][i+v8]=A[i+v8][j+4+2];
                        B[j+4+3][i+v8]=A[i+v8][j+4+3];
                    }
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

