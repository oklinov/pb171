#include "../src/analog.h"
#include "../src/basic_functions.h"
#include "../src/uart.h"

int main(void) {
    millis_init();
    uart_begin();
    uint16_t value = 0;
    uart_println("Beginning conversion");
    while (1) {
        value = analogRead(A5);
        uart_printlnInt(value, DEC);
        delay(50);
    }
}
