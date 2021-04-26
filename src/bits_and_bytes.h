#ifndef BITS_AND_BYTES
#define BITS_AND_BYTES

#include <stdint.h>

int16_t bit(const uint8_t);

int16_t bitClear(const int16_t x, const int8_t n);

int8_t bitRead(const int16_t x, const int8_t n);

int16_t bitSet(int16_t x, const int8_t n);

int16_t bitWrite(int16_t x, const int8_t n, const int8_t b);

int8_t lowByte(const int16_t x);

int8_t highByte(const int16_t x);

#endif // BITS_AND_BYTES
