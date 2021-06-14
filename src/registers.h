#ifndef PINS_H
#define PINS_H

#include <stdint.h>

#define REG_MEM_ADDR(reg_mem_addr) (volatile uint8_t *const)((reg_mem_addr))

// status register
#define SREG REG_MEM_ADDR(0x5f)
#define I 7
#define T 6
#define H 5
#define S 4
#define V 3
#define N 2
#define Z 1
#define C 0

// *****************
// GPIO registers
// *****************

#define PORTB REG_MEM_ADDR(0x25)
#define DDRB  REG_MEM_ADDR(0x24)
#define PINB  REG_MEM_ADDR(0x23)

#define PORTC REG_MEM_ADDR(0x28)
#define DDRC  REG_MEM_ADDR(0x27)
#define PINC  REG_MEM_ADDR(0x26)

#define PORTD REG_MEM_ADDR(0x2b)
#define DDRD  REG_MEM_ADDR(0x2a)
#define PIND  REG_MEM_ADDR(0x29)

#define PORT_N(pin) digital_pins[(pin)]
#define PIN_BIT(pin) digital_pins_bits[(pin)]
#define DDR_N(pin) PORT_N(pin) - 0x1
#define PIN_N(pin) PORT_N(pin) - 0x2

// **********************
// timer registers
// **********************

// time/counter control registers
#define TCCR0A REG_MEM_ADDR(0x44)
#define TCCR1A REG_MEM_ADDR(0x80)
#define TCCR2A REG_MEM_ADDR(0xb0)
#define WGM00 0
#define WGM01 1
#define COM0B0 4
#define COM0B1 5
#define COM0A0 6
#define COM0A1 7

// time/counter control registers
#define TCCR0B REG_MEM_ADDR(0x45)
#define TCCR1B REG_MEM_ADDR(0x81)
#define TCCR2B REG_MEM_ADDR(0xb1)
#define CS00 0
#define CS01 1
#define CS02 2
#define WGM02 3
#define FOC0B 6
#define FOC0A 7

// output compare registers for timer0
#define OCR0B REG_MEM_ADDR(0x48)
#define OCR0A REG_MEM_ADDR(0x47)

// output compare registers for timer1
#define OCR1BH REG_MEM_ADDR(0x8b)
#define OCR1BL REG_MEM_ADDR(0x8a)
#define OCR1AH REG_MEM_ADDR(0x89)
#define OCR1AL REG_MEM_ADDR(0x88)

// output compare registers for timer2
#define OCR2B REG_MEM_ADDR(0xb4)
#define OCR2A REG_MEM_ADDR(0xb3)

// timer interrupt mask register
#define TIMSK0 REG_MEM_ADDR(0x6e)
#define TIMSK1 REG_MEM_ADDR(0x6f)
#define TOIE0 0
#define OCIE0A 1
#define OCIE0B 2

// value of 8-bit timer0
#define TCNT0 REG_MEM_ADDR(0x46)

// value of 16-bit timer1
#define TCNT1H REG_MEM_ADDR(0x85)
#define TCNT1L REG_MEM_ADDR(0x84)

// value of 8-bit timer2
#define TCNT2 REG_MEM_ADDR(0xb2)

// **********************
// ADC registers
// **********************

typedef enum ANALOG_PIN {
    A0 = 0b00000000,
    A1 = 0b00000001,
    A2 = 0b00000010,
    A3 = 0b00000011,
    A4 = 0b00000100,
    A5 = 0b00000101,
} AnalogPin_t;

#define ADMUX REG_MEM_ADDR(0x7c)
// reference selection bits, 00 => AREF
#define REFS1 7 
#define REFS0 6

// left adjust result
#define ADLAR 5

// analog channel selection bits, see enum ANALOG_PIN
#define MUX3  3
#define MUX2  2
#define MUX1  1
#define MUX0  0

#define ADCSRB REG_MEM_ADDR(0x7b)
#define ACME  6

// auto trigger source
#define ADTS2 2
#define ADTS1 1
#define ADTS0 0

#define ADCSRA REG_MEM_ADDR(0x7a)

// ADC enable
#define ADEN  7

// ADC start conversion, write 1 to start, stays 1 until conversion is completed
#define ADSC  6

// auto trigger enable
#define ADATE 5

// ADC Interrupt flag
#define ADIF  4

// ADC interrupt enable
#define ADIE  3

// prescaler select bits
#define ADPS2 2
#define ADPS1 1
#define ADPS0 0

// registers for storing ADC result
#define ADCH REG_MEM_ADDR(0x79)
#define ADCL REG_MEM_ADDR(0x78)

// **********************
// USART registers
// **********************

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

#endif // PINS_H
