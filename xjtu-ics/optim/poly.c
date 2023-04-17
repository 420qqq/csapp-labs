#include "poly.h"
#include <time.h>

void poly_optim(const double a[], double x, long degree, double *result) {
    // your code here
    long i;
    double t1, t2, t3, t4, t5, t6, t7, t8, tp1, tp2;
    double r = a[degree];

    t2 = x * x;
    t3 = t2 * x;
    t4 = t2 * t2;
    t5 = t2 * t3;
    t6 = t3 * t3;

    for (i = degree - 1; i >= 6; i-=6) {
        tp1 = a[i] * t5;
        tp2 = a[i-1] * t4;
        r = r * t6;
        t1 = a[i-2] * t3;
        t7 = a[i-3] * t2;
        r += t1;
        t8 = a[i-4] * x;
        tp1 += tp2;
        t7 += t8;
        r += a[i-5];
        r += tp1;
        r += t7;
    }
    /*
    t2 = x * x;
    t3 = t2 * x;
    t4 = t2 * t2;
    t5 = t2 * t3;
    t6 = t3 * t3;
    t7 = t3 * t4;
    t8 = t4 * t4;

    for (i = degree - 1; i >= 8; i-=8) {
        tp1 = a[i] * t7;
        r = r * t8;
        tp2 = a[i-1] * t6;
        r += tp1;
        t1 = a[i-3] * t4;
        r += tp2;
        tp1 = a[i-4] * t3;
        r += t1;
        tp2 = a[i-5] * t2;
        r += tp1;
        t1 = a[i-6] * x;
        r += tp2;
        tp2 += a[i-7];
        r += t1;
        r += tp2;
    }*/

    /*t2 = x * x;
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
    }
    for (i = degree - 1; i >= 3; i-=3) {
        t2 = x * x;
        t1 = x * a[i-1];
        t3 = x * t2;
        t4 = t1 + a[i-2];
        t5 = t2 * a[i];
        r = r * t3;
        t6 = t4 + t5;
        r = r + t6;
    }*/
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
