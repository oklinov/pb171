#ifndef BASIC_FUNCTIONS_H
#define BASIC_FUNCTIONS_H

#include <stdint.h>

#include "bits_and_bytes.h"

#define REG_MEM_ADDR(reg_mem_addr) (volatile uint8_t *const)((reg_mem_addr))
#define PORTB REG_MEM_ADDR(0x25)
#define DDRB  REG_MEM_ADDR(0x24)
#define PINB  REG_MEM_ADDR(0x23)

#define PORTC REG_MEM_ADDR(0x28)
#define DDRC  REG_MEM_ADDR(0x27)
#define PINC  REG_MEM_ADDR(0x26)

#define PORTD REG_MEM_ADDR(0x2b)
#define DDRD  REG_MEM_ADDR(0x2a)
#define PIND  REG_MEM_ADDR(0x29)

#define INPUT 0
#define OUTPUT 1
#define INPUT_PULLUP 2

#define LOW 0
#define HIGH 1

static volatile uint8_t *const digital_pins[] = {
    PORTD, // pin 0
    PORTD, // pin 1
    PORTD, // pin 2
    PORTD, // pin 3
    PORTD, // pin 4
    PORTD, // pin 5
    PORTD, // pin 6
    PORTD, // pin 7
    PORTB, // pin 8
    PORTB, // pin 9
    PORTB, // pin 10
    PORTB, // pin 11
    PORTB, // pin 12
    PORTB, // pin 13
};

static const uint8_t digital_pins_bits[] = {
    0, // pin 0
    1, // pin 1
    2, // pin 2
    3, // pin 3
    4, // pin 4
    5, // pin 5
    6, // pin 6
    7, // pin 7
    0, // pin 8
    1, // pin 9
    2, // pin 10
    3, // pin 11
    4, // pin 12
    5, // pin 13
};

#define PORT_N(pin) digital_pins[(pin)]
#define PIN_BIT(pin) digital_pins_bits[(pin)]
#define DDR_N(pin) PORT_N(pin) - 0x1
#define PIN_N(pin) PORT_N(pin) - 0x2

static inline void pinMode(const uint8_t pin, const uint8_t mode) {
    const uint8_t bit = PIN_BIT(pin);
    volatile uint8_t *const ddr = DDR_N(pin);
    volatile uint8_t *const port = PORT_N(pin);
    switch (mode) {
        case INPUT:
            *ddr = bitClear(*ddr, bit);
            *port = bitClear(*port, bit);
            break;
        case OUTPUT:
            *ddr = bitSet(*ddr, bit);
            break;
        case INPUT_PULLUP:
            *ddr = bitClear(*ddr, bit);
            *port = bitSet(*port, bit);
            break;
    }
}

static inline void digitalWrite(const uint8_t pin, const uint8_t value) {
    const uint8_t bit = PIN_BIT(pin);
    volatile uint8_t *const port = PORT_N(pin);
    *port = bitWrite(*port, bit, value);
}

static inline uint8_t digitalRead(const uint8_t pin) {
    const uint8_t bit = PIN_BIT(pin);
    volatile uint8_t *const port = PORT_N(pin);
    return bitRead(*port, bit);
}

/*
 * digital pins:
 *
 * DDRxn:
 * - write 0: pin is set to input
 * - write 1: pin is set to output
 * PORTxn:
 * - DDRxn is 0 (input):
 *   - write 0: pull-up resistor deactivated
 *   - write 1: pull-up resistor activated
 * - DDRxn is 1 (output):
 *   - write 0: port pin is driven low
 *   - write 1: port pin is driven high
 * PINxn:
 * - write 0:
 * - write 1: toggles value of PORTxn
 *
 * PORTB 0x05 (0x25) 0-7
 * DDRB  0x04 (0x24) 0-7
 * PINB  0x03 (0x23) 0-7
 *
 * PORTC 0x08 (0x28) 0-7
 * DDRC  0x07 (0x27) 0-7
 * PINC  0x06 (0x26) 0-7
 *
 * PORTD 0x0b (0x2b) 0-7
 * DDRD  0x0a (0x2a) 0-7
 * PIND  0x09 (0x29) 0-7
 */

static inline void analogRead() {
}

static inline void analogWrite() {
}

#define SREG REG_MEM_ADDR(0x5f)
#define I 7
#define T 6
#define H 5
#define S 4
#define V 3
#define N 2
#define Z 1
#define C 0

#define TCCR0A REG_MEM_ADDR(0x44)
#define TCCR1A REG_MEM_ADDR(0x80)
#define WGM00 0
#define WGM01 1
#define COM0B0 4
#define COM0B1 5
#define COM0A0 6
#define COM0A1 7

#define TCCR0B REG_MEM_ADDR(0x45)
#define TCCR1B REG_MEM_ADDR(0x81)
#define CS00 0
#define CS01 1
#define CS02 2
#define WGM02 3
#define FOC0B 6
#define FOC0A 7

#define OCR0A REG_MEM_ADDR(0x47)
#define OCR1AH REG_MEM_ADDR(0x89)
#define OCR1AL REG_MEM_ADDR(0x88)
#define TIMSK0 REG_MEM_ADDR(0x6e)
#define TIMSK1 REG_MEM_ADDR(0x6f)
#define TOIE0 0
#define OCIE0A 1
#define OCIE0B 2

#define TCNT0 REG_MEM_ADDR(0x46)
#define TCNT1H REG_MEM_ADDR(0x85)
#define TCNT1L REG_MEM_ADDR(0x84)
#define TCNT2 REG_MEM_ADDR(0xb2)

extern uint16_t cont;

void delay(const uint16_t millis);

#define TIMER0_COMPA 0x00e

void delayMicroseconds(const uint16_t us);

uint32_t millis(void);

void millis_init(void);

void micros_init(void);

uint32_t micros(void);

extern volatile uint32_t timer0_millis;

#endif // BASIC_FUNTIONS_H
