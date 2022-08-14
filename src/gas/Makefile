.PHONY build-add: 
build-add: # アセンブリ言語での出力
	gcc -g -S -fno-pic -fomit-frame-pointer add.c


.PHONY: asm-add
asm-add: # アセンブリプログラムadd.sをオブジェクトファイルにアセンブルする -a: アセンブル結果を出力する
	as -a -o add.o add.s

.PHONY: dasm-add
dasm-add: # add.oを逆アセンブルする
	objdump -d add.o

.PHONY: show-symbol
show-symbol: # オブジェクトファイルadd.oに含まれているシンボルを確認する
	objdump -t add.o

.PHONY: link-add
link: # リンクすることにより実行ファイルを作成する
	ld -o add add.o

.PHONY: asm-cmp
asm-cmp: # アセンブリプログラムcmp.sをオブジェクトファイルcmp.oにアセンブルする
	as -o cmp.o cmp.s

.PHONY: link-cmp
link-cmp: # リンクすることにより実行ファイルを作成する
	ld -o cmp cmp.o

.PHONY: asm-cpuid
asm-cpuid: # アセンブリプログラムcpuid.sをオブジェクトファイルcpuid.oにアセンブルする
	as -o cpuid.o cpuid.s

.PHONY: link-cpuid
link-cpuid: # リンクすることにより実行ファイルを作成する
	ld -o cpuid cpuid.o

