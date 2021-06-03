#include "buffer.h"

void buffer_store(struct buffer * const buffer, const int8_t byte) {
    buffer->buf[buffer->head] = byte;
    buffer->head = (buffer->head + 1) % BUFFER_SIZE;
}

int8_t buffer_load(struct buffer * const buffer) {
    const int8_t byte = buffer_peek(buffer);
    buffer->buf[buffer->tail] = -1;
    buffer->tail = (buffer->tail + 1) % BUFFER_SIZE;
    return byte;
}

int8_t buffer_peek(const struct buffer * const buffer) {
    const int8_t byte = buffer->buf[buffer->tail];
    return byte;
}

uint8_t buffer_size(const struct buffer * const buffer) {
    const int8_t diff = buffer->head - buffer->tail;
    return diff >= 0 ? diff : diff + BUFFER_SIZE;
}
