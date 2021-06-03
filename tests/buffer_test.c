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
    assert(buffer_peek(&buffer) == 5);

    assert(buffer_load(&buffer) == 5);
    assert(buffer_size(&buffer) == 0);
    assert(buffer_peek(&buffer) == -1);

    buffer_store(&buffer, 1);
    buffer_store(&buffer, 2);
    assert(buffer_size(&buffer) == 2);
    assert(buffer_peek(&buffer) == 1);
    printf("ok\n");

    return 0;
}
