#include <stdint.h>

#define BUFFER_SIZE 64

struct buffer {
    int8_t buf[BUFFER_SIZE];
    uint8_t head;
    uint8_t tail;
    uint8_t size;
};

#define BUFFER_INIT(buffer_name) struct buffer buffer_name = {\
    .buf = { [0 ... BUFFER_SIZE - 1] = -1 }, \
    .head = 0, \
    .tail = 0, \
    .size = 0, \
}

void buffer_store(struct buffer * const buffer, const int8_t byte);

int8_t buffer_load(struct buffer * const buffer);

int8_t buffer_peek(const struct buffer * const buffer);

uint8_t buffer_size(const struct buffer * const buffer);
