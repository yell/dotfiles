TARGETS = $(shell find . -mindepth 1 -maxdepth 1 -type d)

all: $(TARGETS)

$(TARGETS):
	cd $@ && make

.PHONY: all $(TARGETS)
