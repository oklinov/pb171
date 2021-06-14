#ifndef ANALOG_H
#define ANALOG_H

#include <stdint.h>

#include "registers.h"

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
