#include "bits_and_bytes.h"
#include "interrupts.h"
#include "uart.h"
#include "basic_functions.h"
#include <stdint.h>

BUFFER_INIT(receive_buffer);
BUFFER_INIT(transmit_buffer);

// this gets triggered when there is unread data in UDR0
ISR(__vector_usart_rx) {
    const uint8_t byte = *UDR0;
    buffer_store(&receive_buffer, byte);
}

ISR(__vector_usart_udre) {
    if (buffer_size(&transmit_buffer)) {
        *UDR0 = buffer_load(&transmit_buffer);
    }
}

uint8_t uart_available(void) {
    return buffer_size(&receive_buffer);
}

uint8_t uart_available_for_write(void) {
    return BUFFER_SIZE - buffer_size(&transmit_buffer);
}

void uart_begin(void) {
    // set baud rate to 9600
    *UBBR0H = highByte(UBBR);
    *UBBR0L = lowByte(UBBR);

    // enable receiver
    *UCSR0B = bitSet(*UCSR0B, RXEN0);

    // enable receive interrupt
    *UCSR0B = bitSet(*UCSR0B, RXCIE0);

    // enable transmitter
    *UCSR0B = bitSet(*UCSR0B, TXEN0);

    // enable udre interrupt
    *UCSR0B = bitSet(*UCSR0B, UDRIE0);

    // set asynchronous mode
    /**UCSR0C = bitClear(*UCSR0C, UMSEL00);*/
    /**UCSR0C = bitClear(*UCSR0C, UMSEL01);*/

    // disable parity mode
    /**UCSR0C = bitClear(*UCSR0C, UPM00);*/
    /**UCSR0C = bitClear(*UCSR0C, UPM01);*/

    // set 1 stop bit
    /**UCSR0C = bitClear(*UCSR0C, USBS0);*/

    // set character size to 8 bits
    *UCSR0C = bitSet(*UCSR0C, UCSZ00);
    *UCSR0C = bitSet(*UCSR0C, UCSZ01);
    *UCSR0B = bitClear(*UCSR0B, UCSZ02);

    // enable interrupts
    *SREG = bitSet(*SREG, I);
}

void uart_end() {
    // disable receiver
    *UCSR0B = bitClear(*UCSR0B, RXEN0);

    // disable transmitter
    *UCSR0B = bitClear(*UCSR0B, TXEN0);

    // disable receive interrupt
    *UCSR0B = bitClear(*UCSR0B, RXCIE0);

    // disable transmit interrupt
    *UCSR0B = bitClear(*UCSR0B, TXRCIE0);
}

void uart_flush(void) {
    while (uart_available_for_write() < BUFFER_SIZE);
}

int8_t uart_peek(void) {
    return buffer_peek(&receive_buffer);
}

int8_t uart_read(void) {
    return buffer_load(&receive_buffer);
}

void uart_write_byte(const uint8_t data) {
    if (!buffer_size(&transmit_buffer) && !bitRead(*UCSR0A, UDRE0)) {
        *UDR0 = data;
    } else {
        buffer_store(&transmit_buffer, data);
    }
}

void uart_write_string(const char *string) {
    for (uint8_t i = 0; string[i] != 0; i++) {
        uart_write_byte(string[i]);
    }
}
