#include "../src/basic_functions.h"
#include "../src/uart.h"

void start(void);
void stop(void);
void reset(void);

uint32_t elapsed(void);
uint8_t isRunning(void);

uint8_t state = 0;

int main(void) {
    uart_begin();
    millis_init();
    reset();

    while (1) {
        const char c = uart_read();
        switch (c) {
            case '1':
                start();
                break;
            case '2':
                stop();
                break;
            case '3':
                reset();
                break;
            case '4':
                uart_printlnInt(elapsed(), DEC);
                break;
            case '5':
                switch (state) {
                    case 0:
                        uart_println("stopped");
                        break;
                    case 1:
                        uart_println("running");
                        break;
                    case 2:
                        uart_println("reset");
                        break;
                }
                break;
        }
    }

    return 0;
}

void start(void) {
    // enable Timer/Counter0 Compare Match A interrupt
    *TIMSK0 = bitSet(*TIMSK0, OCIE0A);
    state = 1;
}

void stop(void) {
    // disable Timer/Counter0 Compare Match A interrupt
    *TIMSK0 = bitClear(*TIMSK0, OCIE0A);
    state = 0;
}

void reset(void) {
    state = 2;
    // disable Timer/Counter0 Compare Match A interrupt
    *TIMSK0 = bitClear(*TIMSK0, OCIE0A);
    timer0_millis = 0;
}

uint32_t elapsed(void) {
    return millis();
}
