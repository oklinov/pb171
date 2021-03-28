#include <assert.h>
#include <stdio.h>

#include "../src/bits_and_bytes.h"

void test_bit();
void test_bitClear();
void test_bitRead();
void test_bitSet();
void test_bitWrite();
void test_lowByte();
void test_highByte();

int main(void) {
    test_bit();
    test_bitClear();
    test_bitRead();
    test_bitSet();
    test_bitWrite();
    test_lowByte();
    test_highByte();
    return 0;
}

void test_bit() {
    printf("Testing function bit...");
    const uint16_t val1 = bit(0);
    assert(val1 == 1);

    const int16_t val2 = bit(1);
    assert(val2 == 2);

    const int16_t val3 = bit(2);
    assert(val3 == 4);

    const int16_t val4 = bit(8);
    assert(val4 == 256);

    const int16_t val5 = bit(15);
    assert(val5 == -32768);

    printf("ok\n");
}

void test_bitClear() {
    printf("Testing function bitClear...");
    const int16_t val1 = bitClear(1, 0);
    assert(val1 == 0);

    const int16_t val2 = bitClear(3, 1);
    assert(val2 == 1);

    const int16_t val3 = bitClear(254, 0);
    assert(val3 == 254);

    const int16_t val4 = bitClear(257, 8);
    assert(val4 == 1);

    printf("ok\n");
}

void test_bitRead() {
    printf("Testing function bitRead...");
    const int8_t val1 = bitRead(1, 0);
    assert(val1 == 1);

    const int8_t val2 = bitRead(3, 1);
    assert(val2 == 1);

    const int8_t val3 = bitRead(254, 0);
    assert(val3 == 0);

    const int8_t val4 = bitRead(255, 5);
    assert(val4 == 1);

    printf("ok\n");
}

void test_bitSet() {
    printf("Testing function bitSet...");
    int16_t val1 = 0;
    bitSet(&val1, 0);
    assert(val1 == 1);

    int16_t val2 = 0;
    bitSet(&val2, 7);
    assert(val2 == 128);

    int16_t val3 = 254;
    bitSet(&val3, 0);
    assert(val3 == 255);

    int16_t val4 = 96;
    bitSet(&val4, 2);
    assert(val4 == 100);

    printf("ok\n");
}

void test_bitWrite() {
    printf("Testing function bitSet...");

    int16_t val1 = 0;
    bitWrite(&val1, 0, 1);
    assert(val1 == 1);

    int16_t val2 = 0;
    bitWrite(&val2, 0, 0);
    assert(val2 == 0);

    int16_t val3 = 0;
    bitWrite(&val3, 7, 1);
    assert(val3 == 128);

    int16_t val4 = 129;
    bitWrite(&val4, 7, 0);
    assert(val4 == 1);

    int16_t val5 = 254;
    bitWrite(&val5, 0, 1);
    assert(val5 == 255);

    int16_t val6 = 96;
    bitWrite(&val6, 2, 1);
    assert(val6 == 100);

    printf("ok\n");
}

void test_lowByte() {
    printf("Testing function lowByte...");

    assert(lowByte(0) == 0);
    assert(lowByte(257) == 1);
    assert(lowByte(123) == 123);

    printf("ok\n");
}

void test_highByte() {
    printf("Testing function highByte...");

    assert(highByte(0) == 0);
    assert(highByte(257) == 1);
    assert(highByte(123) == 0);
    assert(highByte(0x1234) == 0x12);

    printf("ok\n");
}

