.PHONY: cmp-inline
cmp-inline:
	gcc -no-pie -fno-pic -fomit-frame-pointer inline.c -o inline

.PHONY: comp-sum
comp-sum: # sum.cとsum_asm.sの2つをオブジェクトファイルに変換、リンクして実行ファイルを生成する
	gcc -fno-pic -c -o sum.o sum.c
	as -o sum_asm.o sum_asm.s
	gcc -o sum sum.o sum_asm.o