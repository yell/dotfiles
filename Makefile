ROOT = dotfiles/
MAKEFILES = $(shell find $(ROOT) -mindepth 2 -maxdepth 2 -name '?akefile' -printf "%h\n" | sort -u)
DOTFILES = $(shell find $(ROOT) -name '.*')

all: $(MAKEFILES) $(DOTFILES)

$(DOTFILES):
	cp $@ ~

$(MAKEFILES):
	@echo Executing $@ ...
	cd $@ && make
	@echo

.PHONY: all $(MAKEFILES) $(DOTFILES)
