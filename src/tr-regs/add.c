/**
 * 4.5.1 Cからアセンブリ言語への変換確認用
 * 
 * gcc -S -fno-pic -fomit-frame-pointer add.c
 */
#include <stdio.h>
int main(void) {
    register int i, j;
    i = 123;
    i = i + 1;
    j = 456;
    j = i + j;
    printf("j: %d\n", j);
    return j;
}