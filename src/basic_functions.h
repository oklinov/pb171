#ifndef BASIC_FUNCTIONS_H
#define BASIC_FUNCTIONS_H

#include <stdint.h>

#include "bits_and_bytes.h"

#define IO_PORT_OFFSET 0x20
#define IO_PORT(port) (volatile uint8_t *const)((port) + IO_PORT_OFFSET)
#define PORTB IO_PORT(0x05)
#define DDRB  IO_PORT(0x04)
#define PINB  IO_PORT(0x03)

#define PORTC IO_PORT(0x08)
#define DDRC  IO_PORT(0x07)
#define PINC  IO_PORT(0x06)

#define PORTD IO_PORT(0x0b)
#define DDRD  IO_PORT(0x0a)
#define PIND  IO_PORT(0x09)

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

#define SREG IO_PORT(0x3f)
#define I 7
#define T 6
#define H 5
#define S 4
#define V 3
#define N 2
#define Z 1
#define C 0

#define TCCR0A IO_PORT(0x24)
#define WGM00 0
#define WGM01 1
#define COM0B0 4
#define COM0B1 5
#define COM0A0 6
#define COM0A1 7

#define TCCR0B IO_PORT(0x25)
#define CS00 0
#define CS01 1
#define CS02 2
#define WGM02 3
#define FOC0B 6
#define FOC0A 7

#define OCR0A IO_PORT(0x27)
#define TIMSK0 IO_PORT(0x4e)
#define TOIE0 0
#define OCIE0A 1
#define OCIE0B 2

#define TCNT0 IO_PORT(0x26)
#define TCNT1H IO_PORT(0x85)
#define TCNT1L IO_PORT(0x84)
#define TCNT2 IO_PORT(0xb2)

extern uint16_t cont;

void delay(const uint16_t millis);

#define TIMER0_COMPA 0x00e

static inline void delayMicroseconds() {
}

uint32_t millis(void);

void millis_init(void);

static inline void micros() {
}

extern volatile uint32_t timer0_millis;

#endif // BASIC_FUNTIONS_H
