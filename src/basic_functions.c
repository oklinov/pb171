#include "basic_functions.h"

volatile uint32_t timer0_millis = 0;
volatile uint32_t timer1_micros = 0;

uint32_t millis(void) {
    uint32_t millis;
    uint8_t oldSREG = *SREG;
    *SREG = bitClear(*SREG, I);
    millis = timer0_millis;
    *SREG = oldSREG;
    return millis;
}

void millis_init(void) {
    timer0_millis = 0;

    // disable interrupts
    *SREG = bitClear(*SREG, I);

    // zero out TCCR0{A,B} registers
    *TCCR0A = 0;
    *TCCR0B = 0;

    // set prescaler to 256
    *TCCR0B = bitClear(*TCCR0B, CS00);
    *TCCR0B = bitClear(*TCCR0B, CS01);
    *TCCR0B = bitSet(*TCCR0B, CS02);

    // zero out the timer register
    *TCNT0 = 0;

    // timer compare value (should be 62.5 to have exactly 1000Hz)
    *OCR0A = 63;

    // set TCT mode (Clear Timer on Compare Match)
    *TCCR0A = bitClear(*TCCR0A, WGM00);
    *TCCR0A = bitSet(*TCCR0A, WGM01);
    *TCCR0B = bitClear(*TCCR0B, WGM02);

    // enable Timer/Counter0 Compare Match A interrupt
    *TIMSK0 = bitSet(*TIMSK0, OCIE0A);

    // enable interrupts again
    *SREG = bitSet(*SREG, I);
}

void delay(const uint16_t ms) {
    uint32_t now = millis();
    while (millis() - now < ms) {}
}

uint32_t micros(void) {
    uint32_t micros;
    uint8_t oldSREG = *SREG;
    *SREG = bitClear(*SREG, I);
    micros = timer1_micros;
    *SREG = oldSREG;
    return micros;
}

void delayMicroseconds(const uint16_t us) {
    uint32_t now = micros();
    while (micros() - now < us) {}
}

void micros_init(void) {
    timer1_micros = 0;

    // disable interrupts
    *SREG = bitClear(*SREG, I);

    // zero out TCCR0{A,B} registers
    *TCCR1A = 0;
    *TCCR1B = 0;

    // set prescaler to 1
    *TCCR1B = bitSet(*TCCR1B, CS00);
    *TCCR1B = bitClear(*TCCR1B, CS01);
    *TCCR1B = bitClear(*TCCR1B, CS02);

    // zero out the timer register
    *TCNT1H = 0;
    *TCNT1L = 0;

    // timer compare value
    *OCR1AL = 16;
    *OCR1AH = 0;

    // set TCT mode (Clear Timer on Compare Match)
    *TCCR1A = bitClear(*TCCR1A, WGM00);
    *TCCR1A = bitSet(*TCCR1A, WGM01);
    *TCCR1B = bitClear(*TCCR1B, WGM02);

    // enable Timer/Counter0 Compare Match A interrupt
    *TIMSK1 = bitSet(*TIMSK1, OCIE0A);

    // enable interrupts again
    *SREG = bitSet(*SREG, I);
}
