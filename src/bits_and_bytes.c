#include "bits_and_bytes.h"

int16_t bit(const uint8_t n) {
    return 1 << n;
}

int16_t bitClear(const int16_t x, const int8_t n) {
    return x & (0b111111111111111111 ^ (1 << n));
}

int8_t bitRead(const int16_t x, const int8_t n) {
    return (x & (1 << n)) >> n;
}

void bitSet(int16_t *x, const int8_t n) {
    *x |= 1 << n;
}

void bitWrite(int16_t *x, const int8_t n, const int8_t b) {
    if (b) {
        bitSet(x, n);
    } else {
        *x = bitClear(*x, n);
    }
}

int8_t lowByte(const int16_t x) {
    return (int8_t) x;
}

int8_t highByte(const int16_t x) {
    return (int8_t) (x >> 8);
}

