#ifndef INTERRUPTS_H
#define INTERRUPTS_H

#include <stdint.h>

#define ISR(vector) void (vector) (void) __attribute__((signal)); void (vector) (void)

#endif // INTERRUPTS_H
