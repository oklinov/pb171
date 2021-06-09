#include "parse_int.h"

int8_t get_number_start_index(const struct buffer *const buffer) {
    for (int8_t i = 0; i < buffer_size(buffer); i++) {
        const char c = buffer_get(buffer, i);
        if (c >= '0' && c <= '9') {
            return i;
        }
    }
    return -1;
}

int8_t get_number_end_index(const struct buffer *const buffer, const int8_t start_index) {
    if (start_index == -1) {
        return -1;
    }
    int8_t index = start_index + 1;
    char c;
    while (index < buffer_size(buffer)) {
        c = buffer_get(buffer, index);
        if (c >= '0' && c <= '9') {
            index++;
        } else {
            break;
        }
    }
    return index;
}

int8_t is_number_negative(struct buffer *const buffer, const int8_t start_index) {
    if (start_index == 0) {
        return 0;
    }
    if (buffer_get(buffer, start_index - 1) == '-') {
        return 1;
    }
    return 0;
}

int32_t parse_int(struct buffer *const buffer, int8_t start, const int8_t end, const int8_t negative) {
    for (uint8_t i = 0; i < start; i++) {
        buffer_load(buffer);
    }
    while (start < end && buffer_get(buffer, start) == '0') {
        buffer_load(buffer);
        start++;
    }
    if (start == end) {
        return 0;
    }
    int32_t result = buffer_load(buffer) - '0';
    start++;
    while (start < end) {
        result *= 10;
        result += buffer_load(buffer) - '0';
        start++;
    }
    return negative ? -result : result;
}
