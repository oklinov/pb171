.PHONY: clean

test: src/bits_and_bytes.h tests/bits_and_bytes_test.c
	gcc -std=c99 tests/bits_and_bytes_test.c -o bits_and_bytes_test
	./bits_and_bytes_test

clean:
	rm -f bits_and_bytes.o bits_and_bytes_test led.o led.hex led

led.o: examples/led.c
	avr-gcc -DF_CPU=16000000UL -mmcu=atmega328p -c -o led.o examples/led.c

led: led.o
	avr-gcc -mmcu=atmega328p led.o -o led

led.hex: led
	avr-objcopy -O ihex -R .eeprom led led.hex

led-run: led.hex
	avrdude -F -V -c arduino -p ATMEGA328P -P /dev/ttyACM0 -b 115200 -U flash:w:led.hex
