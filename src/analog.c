#include "analog.h"
#include "basic_functions.h"

void pwmInit(const uint8_t pin) {
    uint8_t volatile *tccrna;
    uint8_t volatile *tccrnb;
    switch (pin) {
        case 3:
        case 11:
            // choose timer 2 for pins 3 and 11
            tccrna = TCCR2A;
            tccrnb = TCCR2B;
            break;
        case 5:
        case 6:
            // choose timer 0 for pins 5 and 6
            tccrna = TCCR0A;
            tccrna = TCCR0B;
            break;
        case 9:
        case 10:
            // choose timer 1 for pins 9 and 10
            tccrna = TCCR1A;
            tccrnb = TCCR1B;
            break;
        default:
            return;
    }
    *tccrnb = 0;
    *tccrna = 0;

    // set prescaler to 64
    *tccrnb = (1 << CS00 | 1 << CS01);
    // set compare output mode to 'clear on compare match, set at bottom', non-inverting mode (COM)
    // set waveform generation form to Fast PWM (WGM)
    *tccrna = (1 << COM0A1 | 1 << COM0B1 | 1 << WGM01 | 1 << WGM00);
}

uint16_t analogRead(const AnalogPin_t pin) {
    // select AREF voltage reference, and select select analog pin
    *ADMUX = (1 << REFS0) | pin;
    // enable adc (ADEN)
    // set adc prescaler to 128 (ADPS[0-2])
    *ADCSRA = (1 << ADEN) | (1 << ADPS2) | (1 << ADPS1) | (1 << ADPS0);
    *ADCSRB = 0;

    // start conversion
    *ADCSRA = bitSet(*ADCSRA, ADSC);

    // wait until the conversion is completed
    while (bitRead(*ADCSRA, ADSC));

    // lower value of adc result needs to be read first
    const uint8_t lower = *ADCL;
    const uint16_t value = (*ADCH << 8) + lower;

    // disable adc
    *ADCSRA = bitClear(*ADCSRA, ADEN);
    return value;

}

void analogWrite(const uint8_t pin, const uint8_t duty_cycle) {
    pinMode(pin, OUTPUT);
    if (duty_cycle == 0) {
        // no need to use pwm
        digitalWrite(pin, LOW);
    } else if (duty_cycle == 255) {
        // no need to use pwm
        digitalWrite(pin, HIGH);
    } else {
        // set
        switch (pin) {
            case 3:
                *OCR2B = duty_cycle;
                break;
            case 5:
                *OCR0B = duty_cycle;
                break;
            case 6:
                *OCR0A = duty_cycle;
                break;
            case 9:
                *OCR1AL = duty_cycle;
                *OCR1AH = 0;
                break;
            case 10:
                *OCR1BL = duty_cycle;
                *OCR1BH = 0;
                break;
            case 11:
                *OCR2A = duty_cycle;
                break;
        }
    }
}
