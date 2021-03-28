.PHONY: clean

test: bits_and_bytes.o
	gcc bits_and_bytes.o tests/bits_and_bytes_test.c -o bits_and_bytes_test
	./bits_and_bytes_test

bits_and_bytes.o: src/bits_and_bytes.c
	gcc -c src/bits_and_bytes.c -o bits_and_bytes.o

clean:
	rm -f bits_and_bytes.o bits_and_bytes_test

