# dotfiles
## How to install
Get the repository
```bash
git clone git@github.com:monsta-hd/dotfiles.git
```
Install (all by default)
```bash
make [alias|terminal|noserc]
```
Run `crontab -e` and copy this
```bash
@reboot echo <PASSWD> | sudo -S ~/dotfiles/dotfiles/startup/sudo_init_cuda.sh
@reboot echo <PASSWD> | sudo -S ~/dotfiles/dotfiles/startup/sudo_rm_crash.sh
@reboot sleep 15 && ~/dotfiles/dotfiles/startup/redshift.sh
@reboot ~/dotfiles/dotfiles/startup/xset.sh
```
