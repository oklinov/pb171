#ifndef ANALOG_H
#define ANALOG_H

#include <stdint.h>

#include "pins.h"

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

/*
 * initializes pwm on specified analog pin (A0-A5)
 * using pins 5 and 6 will affect millis() and delay() as they both use timer 0
 * using pins 9 and 10 will affect micros() and delayMicroseconds() as they both use timer 1
 */
void pwmInit(const uint8_t pin);

/*
 * reads analog value from the specified pin (A0-A5)
 */
uint16_t analogRead(const AnalogPin_t pin);

/*
 * runs PWM with duty cycle duty_cycle on the specified analog pin (A0-A5)
 */
void analogWrite(const uint8_t pin, const uint8_t duty_cycle);

#endif // ANALOG_H
