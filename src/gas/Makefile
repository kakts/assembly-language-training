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

.PHONY: link
link: # リンクすることにより実行ファイルを作成する
	ld -o add add.o
