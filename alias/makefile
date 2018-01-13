ALIAS_ROOT=$(PWD)

all: 
	cat $(ALIAS_ROOT)/alias.sh >> ~/.bashrc
	cat $(ALIAS_ROOT)/alias.sh | sudo tee -a /root/.bashrc >/dev/null
	cat $(ALIAS_ROOT)/alias.sh | sudo tee -a /etc/.bashrc >/dev/null

.PHONY: all
