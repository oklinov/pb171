#include "../src/bits_and_bytes.h"
#include "../src/basic_functions.h"
#include <stdint.h>

int main() {
    pinMode(13, OUTPUT);
    digitalWrite(13, HIGH);
    while(1) {
        // todo: implement delay
        uint16_t i = 0;
        while(i < (INT16_MAX)) {
            uint16_t j = 0;
            while (j < INT8_MAX) {
                j += 8;
            }
            i++;
        }
        const uint8_t value = digitalRead(13) ? LOW : HIGH;
        digitalWrite(13, value);
    }
    return 0;
}
