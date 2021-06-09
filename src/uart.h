#ifndef UART_H
#define UART_H

#include "pins.h"
#include "buffer.h"

// PIN DEFINITIONS
// USART Baud Rate Registers
// 12-bit register that contains baud rate
// on write, baud rate prescaler is updated immediately
#define UBBR0H REG_MEM_ADDR(0xc5) // [11:8]
#define UBBR0L REG_MEM_ADDR(0xc4) // [7:0]

// USART Control Status Register 0 A
#define UCSR0A REG_MEM_ADDR(0xc0)

// UCSR0A[7]: USART Receive Complete
#define RXC0  7 // if set, there are unread data in receive buffer

// UCSR0A[6]: USART Transmit Complete
#define TXC0  6 // if set, there no new data in UDR0

// UCSR0A[5]: USART Data Register Empty
#define UDRE0 5 // if set, UDR0 is ready to receive new data

// UCSR0A[4]: Frame Error
#define FE0   4 // set if next char in rcv buffer has a Frame Error

// UCSR0A[]: Data Overrun
#define DOR0  3 // set if rcv buffer is full

// UCSR0A[]: USART Parity Error
#define UPE0  2 // set if next char in rcv buffer had Parity Error

// UCSR0A[]:  Double the USART Transmission Speed
#define U2X0  1 // if set to one, baud rate divider equals to 16, otherwise 8

// UCSR0A[]: Multi-processor Communication Mode
#define MPCM0 0 // enables this mode

// USART Control and Status Register 0 B
#define UCSR0B REG_MEM_ADDR(0xc1)

// UCSR0B[7]: RX Complete Interrupt Enable
#define RXCIE0  7 // if set, interrupt is enabled

// UCSR0B[6]: TX Complete Interrupt Enable
#define TXRCIE0 6 // if set, interrupt is enabled

// UCSR0B[5]: USART Data Register Empty Interrupt Enable
#define UDRIE0  5 // if set, interrupt is enabled

// UCSR0B[4]: Receiver Enable
#define RXEN0   4 // if set, receiver is enabled

// UCSR0B[3]: Transmitter Enable
#define TXEN0   3 // if set, transmitter is enabled

// UCSR0B[2]: Character Size 0
#define UCSZ02  2

// UCSR0B[1]: Receive Data Bit 8
#define RXB80   1 // nineth bit of the  received char

// UCSR0B[0]: Transmit Data Bit 8
#define TXB80   0 // nineth bit of char to be transmitted

// USART Control and Status Register 0 C
#define UCSR0C REG_MEM_ADDR(0xc2)

// UCSR0C[7]: USART Mode Select 1
#define UMSEL01 7
// UCSR0C[6]: USART Mode Select 0
#define UMSEL00 6
// 00 asynchronous USART
// 01 synchronous USART
// 10 reserved
// 11 master SPI

// UCSR0C[5]: Parity Mode 1
#define UPM01   5
// UCSR0C[4]: Parity Mode 0
#define UPM00   4
// 00 disabled
// 01 reserved
// 10 even parity
// 11 odd parity

// UCSR0C[3]: Stop Bit Select
#define USBS0   3 // 0 = 1 stop bit, 1 = 2 stop bits

// UCSR0C[2]: Character Size 1
#define UCSZ01  2
// UCSR0C[1]: Character Size 0
#define UCSZ00  1
// 000 5-bit
// 001 6-bit
// 010 7-bit
// 011 8-bit
// 111 9-bit

// UCSR0C[0]: Clock Polarity
#define UCPOL0  0 // must be zero in asynchronous mode

// USART I/O Data Register
#define UDR0 REG_MEM_ADDR(0xc6)

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

void uart_printInt(const int32_t value);

void println();

int8_t uart_read(void);

uint8_t uart_readBytes(int8_t *buffer, const uint8_t length);

void uart_write_byte(const uint8_t data);
void uart_write_string(const char *string);

void in(const uint8_t value);
#endif // UART_H
