TARGETS = $(shell find . -mindepth 1 -maxdepth 1 -type d)

all: $(TARGETS)

$(TARGETS):
	@$(MAKE) -C $@;

.PHONY: all $(TARGETS)