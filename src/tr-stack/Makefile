.PHONY build-fact: 
build-fact: # アセンブリ言語での出力
	gcc -g -S -fno-pic -fomit-frame-pointer fact.c

.PHONY compile-fact:
compile-fact: # 5.6.2 実行ファイルaddの生成 arm macでの実行環境では-gをつける
	gcc -g -fno-pic -fomit-frame-pointer -o fact fact.c

.PHONY debug-fact:
debug-fact:
	gdb -q fact


.PHONY: lldb-run
lldb-run:
	lldb fact