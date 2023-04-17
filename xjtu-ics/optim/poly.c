#include "poly.h"
#include <time.h>

void poly_optim(const double a[], double x, long degree, double *result) {
    // your code here
    long i;
    double t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, tp1, tp2, tp3, tp4, tp5, tp6, tp7, tp8;
    double r = a[degree];

    t2 = x * x;
    t3 = t2 * x;
    t4 = t2 * t2;
    t5 = t2 * t3;
    t6 = t3 * t3;
    t7 = t3 * t4;
    t8 = t4 * t4;


    for (i = degree - 1; i >= 6; i-=6) {
        r = t6 * r;
        tp3 = a[i-5];
        tp2 = a[i-4];
        tp1 = a[i-3];
        t8 = a[i-2];
        t7 = a[i-1];
        t1 = a[i];
        t1 *= t5;
        t7 *= t4;;
        t8 *= t3;
        tp2 *= x;
        tp1 *= t2;
        tp3 += t1;
        tp3 += tp2;
        tp3 += tp1;
        tp3 += t7;
        tp3 += t8;
        r += tp3;
    }
/*
    for (i = degree - 1; i >= 7; i-=7) {
        r *= t7;
        tp2 = a[i-1] * t5;
        t1 = a[i-2] * t4;
        tp1 = a[i] * t6;
        t8 = a[i-3] * t3;
        r += tp2;
        tp3 = a[i-4] * t2;
        tp4 = a[i-5] * x;
        tp1 += a[i-6];
        t8 += t1;
        tp1 += t8;
        tp1 += tp4;
        tp1 += tp3;
        r += tp1;
    }*/

    t2 = x * x;
    t3 = t2 * x;
    t4 = t2 * t2;
    t5 = t2 * t3;
    t6 = t3 * t3;
    t7 = t3 * t4;
    t8 = t4 * t4;

    for (i = degree - 1; i >= 8; i -= 8) {
        r = t8 * r;
        tp1 = a[i-7];
        tp2 = a[i-6] * x;
        tp3 = a[i-5] * t2;
        tp4 = a[i-4] * t3;
        tp5 = a[i-3] * t4;
        tp6 = a[i-2] * t5;
        tp7 = a[i-1] * t6;
        tp8 = a[i] * t7;

        t1 = tp1 + tp2 + tp3 + tp4 + tp5 + tp6 + tp7 + tp8;
        r += t1;
    }
    for (i = degree - 1; i >= 8; i-=8) {
        tp1 = a[i] * t7;
        tp2 = a[i-1] * t6;
        tp3 = a[i-2] * t5;
        tp4 = a[i-3] * t4;
        r *= t8;
        tp1 += a[i-7];
        tp5 = a[i-4] * t3;
        tp6 = a[i-5] * t2;
        t1 = a[i-6] * x;
        tp3 += tp2;
        tp1 += tp3;
        tp5 += tp4;
        tp1 += tp5;
        t1 += tp6;
        tp1 += t1;
        r += tp1;
    }


    for (i = degree - 1; i >= 5; i -= 5) {
        r = t5 * r;
        tp1 = a[i-4];
        tp2 = a[i-3] * x;
        tp3 = a[i-2] * t2;
        tp4 = a[i-1] * t3;
        tp5 = a[i] * t4;

        t1 = tp1 + tp2 + tp3 + tp4 + tp5;
        r += t1;
    }

    for (i = degree - 1; i >= 5; i -= 5) {
        r = t5 * r;
        tp1 = a[i-4];
        tp2 = a[i-3];
        tp3 = a[i-2];
        tp4 = a[i-1];
        tp5 = a[i];

        tp2 *= x;
        tp3 *= t2;
        tp4 *= t3;
        tp5 *= t4;

        tp6 = tp1 + tp2 + tp3 + tp4 + tp5;
        r += tp6;
    }
/*
    t2 = x * x;
    t3 = t2 * x;
    t4 = t2 * t2;

    for (i = degree - 1; i >= 4; i-=4) {
        t1 = x * a[i-2];
        t6 = t2 * a[i-1];
        r = t4 * r;
        t5 = t3 * a[i];
        t1 += a[i-3];
        t1 += t6;
        t1 += t5;
        r += t1;
    }*/
    for (i = degree - 1; i >= 3; i-=3) {
        r = r * t3;
        t5 = t2 * a[i];
        t1 = x * a[i-1];
        t4 = t1 + a[i-2];
        t6 = t4 + t5;
        r = r + t6;
    }
    for (; i >= 0; --i) {
        r = a[i] + r * x;
    }
    *result = r;
}


void measure_time(poly_func_t poly, const double a[], double x, long degree,
                  double *time) {
    // your code here
    double result;
    poly(a, x, degree, &result);
    poly(a, x, degree, &result);
    double old_time = clock();
    poly(a, x, degree, &result);
    poly(a, x, degree, &result);
    poly(a, x, degree, &result);
    poly(a, x, degree, &result);
    poly(a, x, degree, &result);
    poly(a, x, degree, &result);
    poly(a, x, degree, &result);
    poly(a, x, degree, &result);
    poly(a, x, degree, &result);
    poly(a, x, degree, &result);
    *time = (clock() - old_time) * 100;
}
