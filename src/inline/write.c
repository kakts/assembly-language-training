/**
 * @file write.c
 * 8.4.1 writeシステムコールの呼び出し
 */

char *str = "Hello,  World!\n";

int main(void) {

    /**
     * 32bitと64bitでシステムコールの呼び方がことなる
     * https://stackoverflow.com/questions/22503944/using-interrupt-0x80-on-64-bit-linux
     */
    // 32bit版
    // asm("movl str, %ecx"); // ECX<-文字列のアドレス
    // asm("movl $14, %edx"); // EDX<-文字列の長さ
    // asm("movl $4, %eax"); // システムコール4番はwrite
    // asm("movl $1, %ebx"); // 標準出力(1)
    // asm("int 0x80"); // システムコール呼び出し

    // 64bit(x86_64)版
    asm("mov $1, %rax"); // 1番はシステムコールwrite
    
    /**
     * システムコールを呼び出す際、
     * 第1引数、第2引数と、引数の順番に合わせて値をセットするレジスターが決まっている。
     * syscall実行時に、システムコールごとに所定のレジスタから値を取り出して実行する
     * 
     * 第1引数: rdi
     * 第2引数: rsi
     * 第3引数: rdx
     * ...
     */
    // writeの引数の値のセット
    asm("mov $1, %rdi"); // 第1引数 ファイルディスクリプタ stdout
    asm("mov str, %rsi"); // 第2引数　メッセージをwriteに渡す
    asm("mov $14, %rdx"); // rdx 文字列の長さ

    asm("syscall"); // システムコール実行
}