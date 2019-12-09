#include <stdint.h>

// extern "C" はお約束
// __attribute__((visibility("default"))) はこの関数が外部から参照可能にする
// __attribute__((used)) はこの関数がリンク時に削除されないようにする
extern "C" __attribute__((visibility("default"))) __attribute__((used))
int32_t native_add(int32_t x, int32_t y) {
    return x + y;
}

