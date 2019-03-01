PASSWORD = $(shell cat ../password.txt)

all:
	sudo cp *.sh /usr/local/bin 
	crontab -l > cron
	echo "@reboot echo $(PASSWORD) | sudo -S sudo_init_cuda.sh" >> cron
	echo "@reboot echo $(PASSWORD) | sudo -S sudo_rm_crash.sh" >> cron
	echo "@reboot sleep 15 && redshift.sh 1>/dev/null" >> cron
	echo "@reboot xset.sh" >> cron
	crontab cron && rm cron
	
.PHONY: all
