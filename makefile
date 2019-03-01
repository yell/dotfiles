TARGETS = $(shell find ./dotfiles -mindepth 2 -maxdepth 2 -name '?akefile' -printf "%h\n" | sort -u)

all: $(TARGETS)

$(TARGETS):
	cd $@ && make

.PHONY: all $(TARGETS)
