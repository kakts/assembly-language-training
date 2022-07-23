.PHONY build-add:
build-add:
	gcc -S -fno-pic -fomit-frame-pointer add.c

.PHONY compile-add:
compile-add: # 4.5.3 実行ファイルaddの生成 
	gcc -fno-pic -fomit-frame-pointer -o add.o add.c

.PHONY debug-add:
debug-add:
	gdb -q add.o
