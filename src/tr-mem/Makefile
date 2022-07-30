.PHONY build-add: 
build-add: # アセンブリ言語での出力
	gcc -g -S -fno-pic -fomit-frame-pointer add.c

.PHONY compile-add:
compile-add: # 5.6.2 実行ファイルaddの生成 arm macでの実行環境では-gをつける
	gcc -g -fno-pic -fomit-frame-pointer -o add add.c;

.PHONY debug-add:
debug-add:
	gdb -q add


.PHONY: lldb-run
lldb-run:
	lldb add