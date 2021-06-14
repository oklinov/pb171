#include "../src/basic_functions.h"
#include "../src/analog.h"

int main() {
    millis_init();

    pinMode(11, OUTPUT);
    pinMode(10, OUTPUT);
    pwmInit(11);
    pwmInit(10);

    uint8_t value = 0;
    int8_t diff = 1;
    analogWrite(11, value);
    analogWrite(10, 255 - value);
    while(1) {
        delay(5);
        value += diff;
        if (!value) {
            diff = -diff;
        }
        analogWrite(11, value);
        analogWrite(10, 255 - value);
    }
    return 0;
}
