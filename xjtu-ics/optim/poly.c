#include "poly.h"
#include <time.h>

void poly_optim(const double a[], double x, long degree, double *result) {
    // your code here
    long i;
    double t1, t2, t3, t4, t5, t6, t7, t8, t9; 
    double r = a[degree];
    double r1 = a[degree-1];
    double r2 = a[degree-2];
    double r3 = a[degree-3];
    double r4 = a[degree-4];
    double r5 = a[degree-5];
    double r6 = a[degree-6];

    t2 = x * x;
    t3 = t2 * x;
    t4 = t2 * t2;
    t5 = t2 * t3;
    t6 = t3 * t3;
    t7 = t3 * t4;
    t8 = t4 * t4;
    t9 = t5 * t4;
   
    for (i = degree - 7; i >= 7; i -= 7) {
    	r = a[i] + r * t7;
	r1 = a[i-1] + r1 * t7;
	r2 = a[i-2] + r2 * t7;
	r3 = a[i-3] + r3 * t7;
	r4 = a[i-4] + r4 * t7;
	r5 = a[i-5] + r5 * t7;
	r6 = a[i-6] + r6 * t7;
    }
    r = r * t6 + r1 * t5 + r2 * t4 + r3 * t3 + r4 * t2 + r5 * x + r6;
    
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
