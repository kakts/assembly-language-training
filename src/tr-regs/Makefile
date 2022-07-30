.PHONY build-add: 
build-add:
	gcc -S -fno-pic -fomit-frame-pointer add.c

.PHONY compile-add:
compile-add: # 4.5.3 実行ファイルaddの生成 
	gcc -g -fno-pic -fomit-frame-pointer -o add add.c;

.PHONY: clang-build
clang-build: # 4.5.3 実行ファイルaddの生成 
	clang -g -O0 add.c -o add -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer

.PHONY debug-add:
debug-add:
	gdb -q add


.PHONY: lldb-run
lldb-run:
	lldb add