#include <assert.h>
#include <stdio.h>

#include "../src/buffer.h"

int main(void) {
    printf("Testing buffer...");
    BUFFER_INIT(buffer);
    assert(buffer.buf[0] == -1);
    assert(buffer.buf[BUFFER_SIZE - 1] == -1);

    assert(buffer_peek(&buffer) == -1);
    assert(buffer_size(&buffer) == 0);

    buffer_store(&buffer, 5);
    assert(buffer_size(&buffer) == 1);
    assert(buffer.head == 1);
    assert(buffer.tail == 0);
    assert(buffer_peek(&buffer) == 5);

    assert(buffer_load(&buffer) == 5);
    assert(buffer.tail == 1);
    assert(buffer_size(&buffer) == 0);
    assert(buffer_peek(&buffer) == -1);

    buffer_store(&buffer, 1);
    buffer_store(&buffer, 2);
    assert(buffer.head == 3);
    assert(buffer_size(&buffer) == 2);
    assert(buffer_peek(&buffer) == 1);
    buffer_load(&buffer);
    buffer_load(&buffer);
    assert(buffer.tail == 3);

    for (int i = 0; i <BUFFER_SIZE; i++) {
        buffer_store(&buffer, i);
    }
    assert(buffer.head == 3);
    assert(buffer_size(&buffer) == BUFFER_SIZE);

    buffer_store(&buffer, 'f');
    assert(buffer.head == 3);
    assert(buffer_size(&buffer) == BUFFER_SIZE);

    assert(buffer_load(&buffer) == 0);
    assert(buffer_load(&buffer) == 1);
    assert(buffer_load(&buffer) == 2);
    assert(buffer.tail == 6);
    assert(buffer_size(&buffer) == BUFFER_SIZE - 3);

    buffer_store(&buffer, 'g');
    buffer_store(&buffer, 'h');
    buffer_store(&buffer, 'i');
    assert(buffer.head == 6);

    assert(buffer_size(&buffer) == BUFFER_SIZE);

    printf("ok\n");

    return 0;
}
