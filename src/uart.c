#include "bits_and_bytes.h"
#include "interrupts.h"
#include "uart.h"
#include "basic_functions.h"
#include "parse_int.h"
#include <stdint.h>
#include <stdlib.h>

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

int32_t uart_parseInt(void) {
    const uint32_t timeout = 1000;
    const uint32_t start = millis();
    int8_t start_index = -1;
    int8_t end_index = -1;
    while (millis() - start < timeout) {
        start_index = get_number_start_index(&receive_buffer);
        end_index = get_number_end_index(&receive_buffer, start_index);
        if (end_index != -1 && end_index != buffer_size(&receive_buffer)) {
            break;
        }
    }
    const int8_t negative = is_number_negative(&receive_buffer, start_index);
    const int32_t result = parse_int(&receive_buffer, start_index, end_index, negative);
    return result;
}

int8_t uart_peek(void) {
    return buffer_peek(&receive_buffer);
}

void uart_printInt(const int32_t value, enum RADIX radix) {
    char buffer[32];
    itoa(value, buffer, radix);
    uart_print(buffer);
}

void uart_printlnInt(const int32_t value, enum RADIX radix) {
    uart_printInt(value, radix);
    uart_write('\n');
}

void uart_print(const char *string) {
    for (uint8_t i = 0; string[i] != 0; i++) {
        uart_write(string[i]);
    }
}

void uart_println(const char *string) {
    uart_print(string);
    uart_write('\n');
}

int8_t uart_read(void) {
    return buffer_load(&receive_buffer);
}

uint8_t uart_readBytes(int8_t *const buffer, const uint8_t length) {
    const uint32_t timeout = 1000;
    const uint32_t start = millis();
    uint8_t index = 0;
    while (millis() - start < timeout) {
        while (index < length && buffer_size(&receive_buffer) > 0) {
            buffer[index] = buffer_load(&receive_buffer);
            index++;
        }
        if (index == length) {
            break;
        }
    }
    return index;
}

void uart_write(const int8_t data) {
    if (!buffer_size(&transmit_buffer) && !bitRead(*UCSR0A, UDRE0)) {
        *UDR0 = data;
    } else {
        buffer_store(&transmit_buffer, data);
    }
}
