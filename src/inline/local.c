#include <stdio.h>

// インラインアセンブラから参照できるグローバル変数
char *_str;

int main(void) {
    // 局所変数 strの宣言・初期化
    char str[] = "Hello, World!\n";
    _str = str; // 文字列のアドレスをグローバル変数に格納
    asm("mov _str, %edx\n\t"
        "movb $'o, 1(%edx)\n\t" // 2文字目をoに書き換え
        "movb $'a, 4(%edx)"); // 5文字目をaに書き換え
    printf(str);
    return 0;
}