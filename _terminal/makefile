TERMINAL_SCRIPTS_ROOT=$(PWD)

all: 
	echo "$(TERMINAL_SCRIPTS_ROOT)/xset.sh" >> ~/.bashrc
	echo "$(TERMINAL_SCRIPTS_ROOT)/redshift.sh 1>/dev/null" >> ~/.bashrc
	echo "cd Desktop/ 2>/dev/null" >> ~/.bashrc  # start from Desktop
	echo "sudo dhclient -v wlp3s0" >> ~/.bashrc  # renew a DHCP lease

.PHONY: all
