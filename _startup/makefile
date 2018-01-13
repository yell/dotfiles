STARTUP_SCRIPTS_ROOT=$(PWD)

all: 
	crontab -l > cron
	echo "@reboot $(STARTUP_SCRIPTS_ROOT)/init_cuda.sh" >> cron
	echo "@reboot $(STARTUP_SCRIPTS_ROOT)/rm_crash.sh" >> cron
	echo "@reboot sleep 15 && $(STARTUP_SCRIPTS_ROOT)/redshift.sh 1>/dev/null" >> cron
	echo "@reboot $(STARTUP_SCRIPTS_ROOT)/xset.sh" >> cron
	crontab cron && rm cron
	
.PHONY: all
