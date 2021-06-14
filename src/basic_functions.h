#ifndef BASIC_FUNCTIONS_H
#define BASIC_FUNCTIONS_H

#include <stdint.h>

#include "registers.h"
#include "bits_and_bytes.h"

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
