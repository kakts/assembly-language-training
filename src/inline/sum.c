/**
 * @file sum.c
 * 8.2.1 アセンブリ言語で書かれたプログラムを呼びだす
 */
#include <stdio.h>

// 外部関数sum_asmの利用を宣言
extern int sum_asm(void);

int array_size = 10;
int array[10] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};

int main(void) {
    // 外部関数sum_asmの返り値を表示
    int sum = sum_asm();
    printf("sum = %d\n", sum);
    return 0;
}