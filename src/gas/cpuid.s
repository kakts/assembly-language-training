# 7.4.2

    .global _start
    .text

_start:
    movl $1, %eax # 1: CPUの情報、機能ビットを取得
    cpuid
    movl %edx, %ebx # レジスタEDXの値をEBXにコピー
    shrl $56, %ebx # 24ビット右シフトする
    
    movl $1, %eax # システムコール1番 exit
    int $0x80 # システムコール呼び出し
    
