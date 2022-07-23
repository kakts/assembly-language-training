.PHONY build:
build:
	docker build -t test-ubuntu-assembly .

.PHONY run:
run:
	docker run -it -v $(CURDIR)/src:/home/user/src test-ubuntu-assembly /bin/bash

.PHONY build-run:
build-run: build run