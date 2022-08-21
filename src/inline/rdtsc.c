#include <stdio.h>

// 外部関数rdtscの利用を宣言 アセンブリ言語で実装されている
extern unsigned int rdtsc(void);

int main(void) {
    unsigned int counter = rdtsc();
    printf("%u\n", counter);
    return 0;
}

