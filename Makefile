
CC = avr-gcc
AS = avr-as
OBJCOPY = avr-objcopy
CFLAGS = -mmcu=atmega328p -nostartfiles -DF_CPU=16000000UL
ASFLAGS = -mmcu=atmega328p
EXAMPLES = examples
SRC = src

%.o: $(SRC)/%.c
	$(CC) $(CFLAGS) -c $^ -o $@

%.o: $(SRC)/%.S
	$(AS) $(ASFLAGS) -c $^ -o $@

%-example.o: $(EXAMPLES)/%.c
	$(CC) $(CFLAGS) -c $^ -o $@

led-example: led-example.o setup.o basic_functions.o
	$(CC) $(CFLAGS) $^ -o $@

uart-example: uart-example.o setup.o basic_functions.o buffer.o uart.o
	$(CC) $(CFLAGS) $^ -o $@

%-example.hex: %-example
	$(OBJCOPY) -O ihex -R .eeprom $^ $@

%.run: %.hex
	avrdude -F -V -c arduino -p ATMEGA328P -P /dev/ttyACM0 -b 115200 -U flash:w:$<

test: src/bits_and_bytes.h tests/bits_and_bytes_test.c src/uart.c tests/buffer_test.c
	gcc -std=c99 tests/bits_and_bytes_test.c -o bits_and_bytes_test
	gcc -std=c99 tests/buffer_test.c src/buffer.c -o buffer_test
	./bits_and_bytes_test
	./buffer_test

.PHONY: clean
clean:
	rm -f *.o *-example *.hex *_test

