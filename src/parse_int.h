#ifndef PARSE_INT_H
#define PARSE_INT_H

#include <stdint.h>
#include "buffer.h"

int8_t get_number_start_index(const struct buffer *const buffer);
int8_t get_number_end_index(const struct buffer *const buffer, const int8_t start_index);
int8_t is_number_negative(struct buffer *const buffer, const int8_t start_index);
int32_t parse_int(struct buffer *const buffer, int8_t start, const int8_t end, const int8_t negative);

#endif // PARSE_INT_H
