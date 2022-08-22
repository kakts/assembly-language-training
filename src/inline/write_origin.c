/**
 * @file write.c
 * 8.4.1 writeシステムコールの呼び出し
 */
#include <unistd.h>
char *str = "Hello, World!\n";

int main(void) {
    write(1, "hello\n", 6);
    return 0;
}