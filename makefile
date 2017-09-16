# need to be able to call other targets within given one
THIS_FILE := $(lastword $(MAKEFILE_LIST))

DOTFILES_ROOT="./dotfiles"

install:
	@$(MAKE) -f $(THIS_FILE) alias

alias:
	cat $(DOTFILES_ROOT)/"alias.sh" >> ~/.bashrc
	cat $(DOTFILES_ROOT)/"alias.sh" | sudo tee -a /root/.bashrc >/dev/null
	cat $(DOTFILES_ROOT)/"alias.sh" | sudo tee -a /etc/.bashrc >/dev/null

.PHONY: install alias
