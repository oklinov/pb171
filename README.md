# PB171 project

[Assignment](doc/TaskSpecification.pdf)

## Hardware part
### [Basic schematics](doc/basic-schematics.md)
### [Schematics with high power consumption](doc/high_power_schematics.md)
### [Schematics of the peripherals](doc/peripherals.md)

## Software part

- `src/setup.S`: code for intializing cpu and interrupt vectors (defined only TIMER0_COMPA and TIMER1_COMPA)
- `src/registers.h`: definitions of registers and register bits
- `src/interrupts.h`: defines ISR macro for declaring interrupt handlers
- `examples`
    - `analogRead.c`: reads analog value from pin A5, which can be connected to a potentiometer
    - `analogWrite.c`: output pwm to pins 10 and 11, which can be connecte to leds
    - `led.c`: turns the builtin led on and off every second
    - `uart.c`: writes and reads to/from the console

To be able to run an example, you need to have installed these tools: `make`, `avr-as`, `avr-gcc`, `avr-objcopy`, `avrdude`. To run a <example>, use:
```
make <example>-example-run DEVICE=<device>
```
led example:
```
make led-example-run DEVICE=/dev/ttyACM0
```
analogWrite example:
```
make analogWrite-example-run DEVICE=/dev/ttyACM0
```

uart example:
```
make uart-example-run DEVICE=/dev/ttyACM0 && \
stty -F /dev/ttyACM0 cs8 9600 ignbrk -brkint -icrnl -imaxbel -opost -onlcr -isig -icanon -iexten -echo -echoe -echok -echoctl -echoke noflsh -ixon -crtscts && \
cat /dev/ttyACM0
```
Run `echo -n 111 > /dev/ttyACM0` to send characters.

analogRead example:
```
make analogRead-example-run DEVICE=/dev/ttyACM0 && \
stty -F /dev/ttyACM0 cs8 9600 ignbrk -brkint -icrnl -imaxbel -opost -onlcr -isig -icanon -iexten -echo -echoe -echok -echoctl -echoke noflsh -ixon -crtscts && \
cat /dev/ttyACM0
```

### Platform independent functions

- `src/bits_and_bytes.h`

### Basic functions

- `basic_functions.c` + `basic_functions.h`: port manipulating functions, timer functions
- `src/analog.h` + `src/analog.c`: analog functions

### Class for communication with UART interface

- `src/buffer.c` + `src/buffer.h`: functions for manipulating buffer
- `src/parse_int.c` + `src/parse_int.h`: functions for parsing int
- `src/uart.c` + `src/uart.h`: functions for working with uart

### Advanced peripherals

See `examples/stop_watch.c`
