#include <stdint.h>

#include "../src/uart.h"

void main(void) {
    uart_begin();

    while (1) {
        while (uart_available()) {
            const uint8_t ch = uart_read();
            uart_write_string("You typed: ");
            uart_write_byte(ch);
            uart_write_byte('\n');
        }
    }
}
