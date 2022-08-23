/**
 * @file write.c
 * 8.4.3 writeシステムコールの呼び出し 複数命令の記述法
 */

char *str = "Hello,  World!\n";

int main(void) {
    // 64bit(x86_64)版
    // \tはタブ
    asm("mov $1, %rax\n\t"
        "mov $1, %rdi\n\t"
        "mov str, %rsi\n\t"
        "mov $14, %rdx\n\t"
        "syscall");
}