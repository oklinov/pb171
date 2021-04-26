#ifndef BITS_AND_BYTES
#define BITS_AND_BYTES

#include <stdint.h>

static inline int16_t bit(const uint8_t n) {
    return 1 << n;
}

static inline int16_t bitClear(const int16_t x, const int8_t n) {
    return x & (0b111111111111111111 ^ (1 << n));
}

static inline int8_t bitRead(const int16_t x, const int8_t n) {
    return (x & (1 << n)) >> n;
}

static inline int16_t bitSet(int16_t x, const int8_t n) {
    return x | 1 << n;
}

static inline int16_t bitWrite(int16_t x, const int8_t n, const int8_t b) {
    return b ? bitSet(x, n) : bitClear(x, n);
}

static inline int8_t lowByte(const int16_t x) {
    return (int8_t) x;
}

static inline int8_t highByte(const int16_t x) {
    return (int8_t) (x >> 8);
}

#endif // BITS_AND_BYTES
