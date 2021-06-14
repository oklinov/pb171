#include <stdint.h>

#include "../src/basic_functions.h"
#include "../src/uart.h"

void main(void) {
    uart_begin();
    millis_init();

    uart_print("16 binary: ");
    uart_printlnInt(16, BIN);
    uart_print("16 decimal: ");
    uart_printlnInt(16, OCT);
    uart_print("16 octal: ");
    uart_printlnInt(16, DEC);
    uart_print("16 hexadecimal: ");
    uart_printlnInt(16, HEX);
    uart_flush();

    uart_print("Enter a number: ");
    int32_t num = 0;
    while (!num) {
        num = uart_parseInt();
    }
    uart_printlnInt(num, DEC);
    uart_flush();

    uart_println("entering loop");
    while (1) {
        while (uart_available()) {
            const uint8_t ch = uart_read();
            uart_print("You typed: ");
            uart_write(ch);
            uart_write('\n');
        }
    }
}
