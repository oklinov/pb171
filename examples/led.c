#include "../src/bits_and_bytes.h"
#include "../src/basic_functions.h"
#include "../src/interrupts.h"

ISR(timer0_compare_a) {
    timer0_millis++;
}

int main() {
    millis_init();
    pinMode(13, OUTPUT);
    digitalWrite(13, HIGH);
    while(1) {
        delay(1000);
        const uint8_t value = digitalRead(13) ? LOW : HIGH;
        digitalWrite(13, value);
    }
    return 0;
}
