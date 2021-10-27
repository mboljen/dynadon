LS971 ?= lsd-smp-12-0-0

all: build run post

build:
	$(MAKE) -C build

clean-build:
	$(MAKE) -C build clean

run:
	$(LS971) i=master.k

clean-run:
	$(RM) d3dump* d3hsp* d3plot* messag* status.out

post:
	$(MAKE) -C post

clean-post:
	$(MAKE) -C post clean

clean: clean-build clean-run clean-post

.PHONY: all clean build clean-build run clean-run post clean-post

