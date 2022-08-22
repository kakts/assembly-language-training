.PHONY: cmp-inline
cmp-inline:
	gcc -no-pie -fno-pic -fomit-frame-pointer inline.c -o inline

.PHONY: comp-sum
comp-sum: # sum.cとsum_asm.sの2つをオブジェクトファイルに変換、リンクして実行ファイルを生成
	gcc -fno-pic -c -o sum.o sum.c
	as -o sum_asm.o sum_asm.s
	gcc -no-pie -o sum sum.o sum_asm.o

.PHONY: comp-rdtsc
comp-rdtsc: # rdtsc.cとrdtsc_asm.sの2つをオブジェクトファイルに変換、リンクして実行ファイルを生成
	gcc -fno-pic -c -o rdtsc.o rdtsc.c
	as -o rdtsc_asm.o rdtsc_asm.s
	gcc -no-pie -o rdtsc rdtsc.o rdtsc_asm.o

.PHONY: comp-write
comp-write:
	gcc -g -no-pie -fno-pic -fomit-frame-pointer -o write write.c

.PHONY: asm-write
asm-write: # write.cをアセンブリ言語にコンパイルする write.sに出力
	gcc -S -fno-pic write.c