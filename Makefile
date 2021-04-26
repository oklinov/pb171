.PHONY: clean

test: src/bits_and_bytes.h tests/bits_and_bytes_test.c
	gcc -std=c99 tests/bits_and_bytes_test.c -o bits_and_bytes_test
	./bits_and_bytes_test

clean:
	rm -f bits_and_bytes.o bits_and_bytes_test

