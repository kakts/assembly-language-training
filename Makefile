.PHONY build:
build:
	docker build -t test-ubuntu-assembly .

.PHONY: run 
run: #コンテナ内部でptraceを使うので、--cap-addでptraceを有効にする
	docker run --privileged --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -it -v $(CURDIR)/src:/home/user/src test-ubuntu-assembly /bin/bash

.PHONY: run-tmp
run-tmp:
	docker run --platform linux/amd64 --cap-add=SYS_PTRACE --security-opt seccomp=unconfined --security-opt apparmor=unconfined -it -v $(CURDIR)/src:/home/user/src --rm hohsaki/asm:1.0 /bin/bash

.PHONY build-run:
build-run: build run