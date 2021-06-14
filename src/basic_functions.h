#ifndef BASIC_FUNCTIONS_H
#define BASIC_FUNCTIONS_H

#include <stdint.h>

#include "pins.h"
#include "bits_and_bytes.h"

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
            // set pin to input
            *ddr = bitClear(*ddr, bit);
            // disable pullup
            *port = bitClear(*port, bit);
            break;
        case OUTPUT:
            // set pin to output
            *ddr = bitSet(*ddr, bit);
            break;
        case INPUT_PULLUP:
            // set pin to input
            *ddr = bitClear(*ddr, bit);
            // enable pullup
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

// stores number of milliseconds since the mcu started
extern volatile uint32_t timer0_millis;
// stores number of microsends since the mcu started
extern volatile uint32_t timer1_micros;

/*
 * waits 'millis' milliseconds in a loop by continuously
 * checking timer0_millis value
 */
void delay(const uint16_t millis);

/*
 * returns current value of timer0_millis
 * doesn't handle overflows
 */
uint32_t millis(void);

/*
 * initializes timer0, sets global variable timer0_millis to 0
 */
void millis_init(void);

/*
 * waits 'us' microseconds in a loop by continuously
 * checking timer1_micros value
 */
void delayMicroseconds(const uint16_t us);

/*
 * return current value of timer1_micros
 * doesn't handle overflows
 */
uint32_t micros(void);

/*
 * initializes timer1, sets global variable timer1_micros to 0
 */
void micros_init(void);

#endif // BASIC_FUNTIONS_H
