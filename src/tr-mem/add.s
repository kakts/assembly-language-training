_main:                                  ; @main
Lfunc_begin0:
	.loc	1 4 0                           ; add.c:4:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
Ltmp1:
	.loc	1 0 0 is_stmt 0                 ; add.c:0:0
	adrp	x9, _i@GOTPAGE
	ldr	x9, [x9, _i@GOTPAGEOFF]
	adrp	x8, _j@GOTPAGE
	ldr	x8, [x8, _j@GOTPAGEOFF]
	str	wzr, [sp, #12]
	mov	w10, #123
	.loc	1 5 7 prologue_end is_stmt 1    ; add.c:5:7
	str	w10, [x9]
	.loc	1 6 9                           ; add.c:6:9
	ldr	w10, [x9]
	.loc	1 6 11 is_stmt 0                ; add.c:6:11
	add	w10, w10, #1
	.loc	1 6 7                           ; add.c:6:7
	str	w10, [x9]
	mov	w10, #456
	.loc	1 7 7 is_stmt 1                 ; add.c:7:7
	str	w10, [x8]
	.loc	1 8 9                           ; add.c:8:9
	ldr	w9, [x9]
	.loc	1 8 13 is_stmt 0                ; add.c:8:13
	ldr	w10, [x8]
	.loc	1 8 11                          ; add.c:8:11
	add	w9, w9, w10
	.loc	1 8 7                           ; add.c:8:7
	str	w9, [x8]
	.loc	1 9 12 is_stmt 1                ; add.c:9:12
	ldr	w0, [x8]
	.loc	1 9 5 is_stmt 0                 ; add.c:9:5
	add	sp, sp, #16
	ret