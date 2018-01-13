STARTUP_SCRIPTS_ROOT=$(PWD)
PASSWORD = $(shell cat $(STARTUP_SCRIPTS_ROOT)/../password.txt)

all: 
	crontab -l > cron
	echo "@reboot echo $(PASSWORD) | sudo -S $(STARTUP_SCRIPTS_ROOT)/sudo_init_cuda.sh" >> cron
	echo "@reboot echo $(PASSWORD) | sudo -S $(STARTUP_SCRIPTS_ROOT)/sudo_rm_crash.sh" >> cron
	echo "@reboot sleep 15 && $(STARTUP_SCRIPTS_ROOT)/redshift.sh 1>/dev/null" >> cron
	echo "@reboot $(STARTUP_SCRIPTS_ROOT)/xset.sh" >> cron
	crontab cron && rm cron
	
.PHONY: all
