#include <stdint.h>
#include <stdio.h>

void func()
{
    fprintf(stderr, "Hello, world!\n");
}

extern "C" __attribute__((visibility("default"))) __attribute__((used))
int32_t native_add(int32_t x, int32_t y) {
    func();
    return x + y;
}
