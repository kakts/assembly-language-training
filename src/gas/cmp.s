# 7.4.1 条件分岐と文字列の表示
# 123と456が等しいかをチェックし、等しければequal 等しくなければnot equalと標準出力に表示する
    .global _start
    .text

_start:
    movl $123, %eax
    cmpl $456, %eax # EAXは456かどうかを比較
    je   L1 # もしそうならL1にジャンプ
    movl $msg_neq, %ecx # ECXにmsg_neqのアドレスを格納
    movl $10, %edx # 10文字
    jmp L2 #L2にジャンプ

L1:
    movl $msg_eq, %ecx # ECXにmsq_eqのアドレスを格納
    movl $6, %edx # 6文字
L2:
    movl $4, %eax # システムコール4番はwrite
    movl $1, %ebx # 標準出力
    int $0x80 # システムコール呼び出し

    movl $1, %eax # 1番はexit
    int $0x80 # システムコール呼び出し

    .data
msg_eq: .ascii "equal\n"
msg_neq: .ascii "not equal\n"
