#include <assert.h>
#include <stdio.h>
#include <stdint.h>
#include <string.h>

#include "../src/buffer.h"
#include "../src/parse_int.h"

void test_parseInt(
    const char *const str,
    const uint8_t start_expected,
    const uint8_t end_expected,
    const uint8_t negative_expected,
    const int32_t value_expected,
    const char *const buffer_expected
) {
    printf("Testing parseInt with input: '%s'...", str);
    BUFFER_INIT(buffer);
    struct buffer *const b = &buffer;

    for (int i = 0; str[i]; i++) {
        buffer_store(b, str[i]);
    }
    uint8_t start = get_number_start_index(b);
    assert(start == start_expected);
    uint8_t end = get_number_end_index(b, start);
    assert(end == end_expected);
    uint8_t negative = is_number_negative(b, start);
    assert(negative == negative_expected);
    int32_t value = parse_int(b, start, end, negative);
    assert(value == value_expected);

    for (int i = 0; i < strlen(buffer_expected); i++) {
        assert(buffer_expected[i] == buffer_load(b));
    }

    printf("ok\n");
}

int main(void) {

    test_parseInt("", -1, -1, 0, 0, "");
    test_parseInt("abcd", -1, -1, 0, 0, "abcd");
    test_parseInt("1234", 0, 4, 0, 1234, "");
    test_parseInt("-1234", 1, 5, 1, -1234, "");
    test_parseInt("1234    ", 0, 4, 0, 1234, "    ");
    test_parseInt("-1234    ", 1, 5, 1, -1234, "");
    test_parseInt(" 1234", 1, 5, 0, 1234, "");
    test_parseInt(" -1234", 2, 6, 1, -1234, "");
    test_parseInt("fsfaf1234", 5, 9, 0, 1234, "");
    test_parseInt("fsfaf-1234", 6, 10, 1, -1234, "");
    test_parseInt("left12right", 4, 6, 0, 12, "right");
    test_parseInt("left-12right", 5, 7, 1, -12, "right");
    test_parseInt("-0000", 1, 5, 1, 0, "");

}
