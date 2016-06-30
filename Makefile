# Build rootfs

build: build-fs
	@docker build -t imega/luajit-compiler .

push:
	@docker push imega/luajit-compiler:latest

build_dir:
	@-mkdir -p $(CURDIR)/build

build-fs: build_dir
	@docker run --rm \
		-v $(CURDIR)/runner:/runner \
		-v $(CURDIR)/build:/build \
		-v $(CURDIR)/src:/src \
		imega/base-builder:1.1.1 \
		--packages="busybox gcc luajit musl-dev lua-dev"

test:
	@docker run --rm -v $(CURDIR)/tests:/data imega/luajit-compiler
	@if [ ! -f "$(CURDIR)/tests/app" ];then \
		exit 1; \
	fi

.PHONY: build
