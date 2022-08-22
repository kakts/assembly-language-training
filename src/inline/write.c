/**
 * @file write.c
 * 8.4.1 writeシステムコールの呼び出し
 */

char *str = "Hello, World!\n";

int main(void) {
    asm("movl str, %ecx"); // ECX<-文字列のアドレス
    asm("movl $14, %edx"); // EDX<-文字列の長さ
    asm("movl $4, %eax"); // システムコール4番はwrite
    asm("movl $1, %ebx"); // 標準出力(1)
    asm("int $0x80"); // システムコール呼び出し
}