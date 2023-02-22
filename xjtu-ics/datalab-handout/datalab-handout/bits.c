/*
 * CS:APP Data Lab
 *
 * <Please put your name and userid here>
 *
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 */

extern int printf(const char *, ...);

/* Edit the functions below.  Good luck!  */
// 2
/*
 * implication - given input x and y, which are binary
 * (taking  the values 0 or 1), return x -> y in propositional logic -
 * 0 for false, 1 for true
 *
 * Below is a truth table for x -> y where A is the result
 *
 * |-----------|-----|
 * |  x  |  y  |  A  |
 * |-----------|-----|
 * |  1  |  1  |  1  |
 * |-----------|-----|
 * |  1  |  0  |  0  |
 * |-----------|-----|
 * |  0  |  1  |  1  |
 * |-----------|-----|
 * |  0  |  0  |  1  |
 * |-----------|-----|
 *
 *
 *   Example: implication(1L,1L) = 1L
 *            implication(1L,0L) = 0L
 *   Rating: 2
 */
long implication(long x, long y) {
    return !((x & 1) & (!y));
}
/*
 * leastBitPos - return a mask that marks the position of the
 *               least significant 1 bit. If x == 0, return 0
 *   Example: leastBitPos(96L) = 0x20L
 *   Rating: 2
 */
long leastBitPos(long x) {
    return x & ((~x) + 1);
}
/*
 * distinctNegation - returns 1 if x != -x.
 *     and 0 otherwise
 *   Rating: 2
 */
long distinctNegation(long x) {
    return !!(x & ((~x) + 1) & (0x7fffffffffffffff));
}
/*
 * fitsBits - return 1 if x can be represented as an
 *  n-bit, two's complement integer.
 *   1 <= n <= 64
 *   Examples: fitsBits(5,3) = 0L, fitsBits(-4,3) = 1L
 *   Rating: 2
 */
long fitsBits(long x, long n) {
    return !(((x >> (n + (~0))) + 1) >> 1);
}
// 3
/*
 * trueFiveEighths - multiplies by 5/8 rounding toward 0,
 *  avoiding errors due to overflow
 *  Examples:
 *    trueFiveEighths(11L) = 6L
 *    trueFiveEighths(-9L) = -5L
 *    trueFiveEighths(0x3000000000000000L) = 0x1E00000000000000L (no overflow)
 *  Rating: 4
 */
long trueFiveEighths(long x) {
    return ((x / 8) << 2) + (x / 8) + (((x % 8) << 2) + (x % 8)) / 8;
}
/*
 * addOK - Determine if can compute x+y without overflow
 *   Example: addOK(0x8000000000000000L,0x8000000000000000L) = 0L,
 *            addOK(0x8000000000000000L,0x7000000000000000L) = 1L,
 *   Rating: 3
 */
long addOK(long x, long y) {
    return ((x & 0x8000000000000000) ^ (y & 0x8000000000000000)) ||
           (x + y > y && x + y > x);
}
/*
 * isPower2 - returns 1 if x is a power of 2, and 0 otherwise
 *   Examples: isPower2(5L) = 0L, isPower2(8L) = 1L, isPower2(0) = 0L
 *   Note that no negative number is a power of 2.
 *   Rating: 3
 */
long isPower2(long x) {
    return (!((x & ((~x) + 1)) ^ x)) & (!(x & 0x8000000000000000)) & (!!x);
}
/*
 * rotateLeft - Rotate x to the left by n
 *   Can assume that 0 <= n <= 63
 *   Examples:
 *      rotateLeft(0x8765432187654321L,4L) = 0x7654321876543218L
 *   Rating: 3
 */
long rotateLeft(long x, long n) {
    long sign = x & 0x8000000000000000;
    long a = 64 + (~n) + 1;
    long right = ((1L << a) + 0xffffffffffffffff) & x;
    long left =
        (x >> a) & ((1L << (n + 0xffffffffffffffff)) + 0xffffffffffffffff);
    return (right << n) | ((sign >> a) & (1L << (n + 0xffffffffffffffff))) |
           (left);
}
// 4
/*
 * isPalindrome - Return 1 if bit pattern in x is equal to its mirror image
 *   Example: isPalindrome(0x6F0F0123c480F0F6L) = 1L
 *   Rating: 4
 */
long isPalindrome(long x) {
    return 2L;
}
/*
 * bitParity - returns 1 if x contains an odd number of 0's
 *   Examples: bitParity(5L) = 0L, bitParity(7L) = 1L
 *   Rating: 4
 */
long bitParity(long x) {
    // only apply for positive?
    x = x ^ (x >> 32);
    x = x ^ (x >> 16);
    x = x ^ (x >> 8);
    x = x ^ (x >> 4);
    x = x ^ (x >> 2);
    x = x ^ (x >> 1);
    return x & 1;
}
/*
 * absVal - absolute value of x
 *   Example: absVal(-1) = 1.
 *   You may assume -TMax <= x <= TMax
 *   Rating: 4
 */
long absVal(long x) {
    long sign = (x & 0x8000000000000000);
    long neg = sign + (~(!!sign)) + 1;
    long pos = (~neg) + 0x8000000000000000;
    return (x & pos) | (((~x) + 1) & neg);
}
