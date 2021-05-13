.PHONY: clean

test: src/bits_and_bytes.h tests/bits_and_bytes_test.c
	gcc -std=c99 tests/bits_and_bytes_test.c -o bits_and_bytes_test
	./bits_and_bytes_test

clean:
	rm -f bits_and_bytes.o bits_and_bytes_test led.o led.hex led setup.o timer.o timer.hex timer

led.o: examples/led.c
	avr-gcc -DF_CPU=16000000UL -mmcu=atmega328p -c -o led.o examples/led.c

led: led.o setup.o basic_functions.o
	avr-gcc -mmcu=atmega328p led.o setup.o basic_functions.o -o led -nostartfiles

led.hex: led
	avr-objcopy -O ihex -R .eeprom led led.hex

led-run: led.hex
	avrdude -F -V -c arduino -p ATMEGA328P -P /dev/ttyACM0 -b 115200 -U flash:w:led.hex

setup.o: src/setup.S
	avr-as src/setup.S -o setup.o -mmcu=atmega328p

basic_functions.o: src/basic_functions.c
	avr-gcc -mmcu=atmega328p -c src/basic_functions.c -o basic_functions.o

timer.o: examples/timer.c
	avr-gcc -DF_CPU=16000000UL -mmcu=atmega328p -c -o timer.o examples/timer.c

timer: timer.o setup.o basic_functions.o
	avr-gcc -mmcu=atmega328p timer.o setup.o basic_functions.o -o timer -nostartfiles

timer.hex: timer
	avr-objcopy -O ihex -R .eeprom timer timer.hex

timer-run: timer.hex
	avrdude -F -V -c arduino -p ATMEGA328P -P /dev/ttyACM0 -b 115200 -U flash:w:timer.hex
