.PHONY build:
build:
	docker build -t test-ubuntu-assembly .

.PHONY run:
run: build
	docker run -it -v $(CURDIR)/src:/home/user/src test-ubuntu-assembly /bin/bash