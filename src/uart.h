#ifndef UART_H
#define UART_H

#include "registers.h"
#include "buffer.h"

#define FOSC 16000000
#define BAUD 9600
#define UBBR 103 //(uint16_t)(FOSC / 16 / BAUD - 1)

#define RECEIVE_BUFFER_SIZE 64
#define TRANSMIT_BUFFER_SIZE 64


//extern struct buffer receive_buffer;
//extern struct buffer transmit_buffer;

// FUNCTIONS:

/*
 * returns the number of bytes available for reading
 * data is stored in receive buffer of size RECEIVE_BUFFER_SIZE
 */
uint8_t uart_available(void);

/*
 * returns the number of bytes available for writing
 * data is stored in transmit buffer of size TRANSMIT_BUFFER_SIZE
 */
uint8_t uart_available_for_write(void);

/*
 * sets baud rate and optionaly frame format
 * default: 8 data bits, no parity, one stop bit
 */
void uart_begin();

/*
 * disables transmitter and receiver pins
 */
void uart_end();

/*
 * waits for the transmission of outgoing data to complete
 */
void uart_flush(void);

/*
 *
 */
int32_t uart_parseInt(void);

/*
 * returns the next byte without removing it from receive buffer
 */
int8_t uart_peek(void);

enum RADIX {
    BIN = 2,
    OCT = 8,
    DEC = 10,
    HEX = 16,
};

void uart_printInt(const int32_t value, enum RADIX radix);

void uart_printlnInt(const int32_t value, enum RADIX radix);

void uart_print(const char *string);

void uart_println(const char *string);

int8_t uart_read(void);

uint8_t uart_readBytes(int8_t *buffer, const uint8_t length);

void uart_write(const int8_t data);

#endif // UART_H
