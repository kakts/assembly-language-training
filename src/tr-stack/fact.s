	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 12, 3
	.globl	_fact                           ; -- Begin function fact
	.p2align	2
_fact:                                  ; @fact
Lfunc_begin0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	str	w0, [sp, #8]
Ltmp0:
	.loc	1 9 9 prologue_end              ; fact.c:9:9
	ldr	w8, [sp, #8]
Ltmp1:
	.loc	1 9 9 is_stmt 0                 ; fact.c:9:9
	subs	w8, w8, #1
	b.ne	LBB0_2
	b	LBB0_1
LBB0_1:
	.loc	1 0 9                           ; fact.c:0:9
	mov	w8, #1
Ltmp2:
	.loc	1 10 9 is_stmt 1                ; fact.c:10:9
	str	w8, [sp, #12]
	b	LBB0_3
Ltmp3:
LBB0_2:
	.loc	1 13 12                         ; fact.c:13:12
	ldr	w8, [sp, #8]
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	.loc	1 13 21 is_stmt 0               ; fact.c:13:21
	ldr	w8, [sp, #8]
	.loc	1 13 23                         ; fact.c:13:23
	subs	w0, w8, #1
	.loc	1 13 16                         ; fact.c:13:16
	bl	_fact
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	.loc	1 13 14                         ; fact.c:13:14
	mul	w8, w8, w0
	.loc	1 13 5                          ; fact.c:13:5
	str	w8, [sp, #12]
	b	LBB0_3
LBB0_3:
	.loc	1 14 1 is_stmt 1                ; fact.c:14:1
	ldr	w0, [sp, #12]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
Ltmp4:
Lfunc_end0:
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
Lfunc_begin1:
	.loc	1 16 0                          ; fact.c:16:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w8, #0
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	str	wzr, [sp, #12]
	mov	w0, #3
Ltmp5:
	.loc	1 17 13 prologue_end            ; fact.c:17:13
	bl	_fact
	mov	x8, x0
	ldr	w0, [sp, #4]                    ; 4-byte Folded Reload
	.loc	1 17 9 is_stmt 0                ; fact.c:17:9
	str	w8, [sp, #8]
	.loc	1 19 5 is_stmt 1                ; fact.c:19:5
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
