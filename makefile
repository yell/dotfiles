# need to be able to call other targets within given one
THIS_FILE := $(lastword $(MAKEFILE_LIST))

DOTFILES_ROOT=$(PWD)/dotfiles

all:
	@$(MAKE) -f $(THIS_FILE) alias
	@$(MAKE) -f $(THIS_FILE) terminal
	@$(MAKE) -f $(THIS_FILE) noserc

alias:
	cat $(DOTFILES_ROOT)/alias.sh >> ~/.bashrc
	cat $(DOTFILES_ROOT)/alias.sh | sudo tee -a /root/.bashrc >/dev/null
	cat $(DOTFILES_ROOT)/alias.sh | sudo tee -a /etc/.bashrc >/dev/null

terminal:
	echo "cd Desktop/ 2>/dev/null" >> ~/.bashrc # start from desktop
	echo "$(DOTFILES_ROOT)/startup/xset.sh" >> ~/.bashrc
	echo "$(DOTFILES_ROOT)/startup/redshift.sh 1>/dev/null" >> ~/.bashrc

noserc:
	cp $(DOTFILES_ROOT)/.noserc ~

.PHONY: all alias terminal noserc
