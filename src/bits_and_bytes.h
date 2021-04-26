#ifndef BITS_AND_BYTES
#define BITS_AND_BYTES

#include <stdint.h>

/*
 * returns 2^n
 */
static inline int16_t bit(const uint8_t n) {
    return 1 << n;
}

/*
 * sets n-th bit to 0 and returns the new value
 */
static inline int16_t bitClear(const int16_t x, const int8_t n) {
    return x & (0b111111111111111111 ^ (1 << n));
}

/*
 * returns n-th bit of x
 */
static inline int8_t bitRead(const int16_t x, const int8_t n) {
    return (x & (1 << n)) >> n;
}

/*
 * sets n-th bit of x to 1 and returns the new value
 */
static inline int16_t bitSet(int16_t x, const int8_t n) {
    return x | 1 << n;
}

/*
 * sets n-th bit of x to b and returns the new value
 */
static inline int16_t bitWrite(int16_t x, const int8_t n, const int8_t b) {
    return b ? bitSet(x, n) : bitClear(x, n);
}

/*
 * returns lower byte of x
 */
static inline int8_t lowByte(const int16_t x) {
    return (int8_t) x;
}

/*
 * return higher byte of x
 */
static inline int8_t highByte(const int16_t x) {
    return (int8_t) (x >> 8);
}

#endif // BITS_AND_BYTES
