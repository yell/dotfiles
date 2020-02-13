all:
	cp .bash_aliases ~
	cp .bash_prompt ~
	cp .gitconfig ~
	cp /etc/skel/.bashrc ~ && cat .bashrc >> ~/.bashrc
	cp /etc/skel/.profile ~ && cat .profile >> ~/.profile

.PHONY: all
