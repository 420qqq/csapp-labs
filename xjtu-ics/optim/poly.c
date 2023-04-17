#include "poly.h"
#include <time.h>

void poly_optim(const double a[], double x, long degree, double *result) {
    // your code here
    long i;
    double t1, t2, t3, t4, t5, t6, t7;
    double r = a[degree];
    for (i = degree - 1; i >= 4; i-=4) {
        t4 = x * x * x * x;
        t3 = x * x * x;
        t2 = x * x;
        t1 = x * a[i-2] + a[i-3];
        t6 = t2 * a[i-1];
        t5 = t3 * a[i];
        t7 = t1 + t6;
        r = t4 * r + t5;
        r += t7;
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
