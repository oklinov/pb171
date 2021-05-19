# PB171 project

[Assignment](doc/TaskSpecification.pdf)

## 2.2 [Basic schematics](doc/basic-schematics.md)
## 2.3 [Schematics with high power consumption](doc/high_power_schematics.md)
## 2.4 [Schematics of the peripherals](doc/peripherals.md)

## 3.1 Platform independent functions

See `bits_and_bytes.h` in /src folder.

## 3.2 Basic functions

`setup.S`: code for intializing cpu and interrupt vectors (defined only TIMER0_COMPA and TIMER1_COMPA)
`basic_functions.h`: defines port addresses, ports' bits and function headers
`basic_functions.c`: functions' implementation
`interrupts.h`: defines ISR macro for declaring interrupt handler (only TIMER0_COMPA and TIMER1_COMPA works, but others can be easily added in setup.S file)

`todo`: `analogRead` and `analogWrite`

## 3.3 Class for communication with UART interface
_todo_
## 3.4 Advanced peripherals
_todo_
