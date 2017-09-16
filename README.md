# dotfiles
## How to install
Get the repository
```bash
git clone git@github.com:monsta-hd/dotfiles.git
```
Install (all by default)
```bash
make [alias|terminal]
```
Run `crontab -e` and copy this
```bash
@reboot echo <PASSWD> | sudo -S ~/dotfiles/dotfiles/startup/sudo_init_cuda.sh
@reboot echo <PASSWD> | sudo -S ~/dotfiles/dotfiles/startup/sudo_rm_crash.sh
@reboot sleep 15 && ~/dotfiles/dotfiles/startup/redshift.sh
@reboot ~/dotfiles/dotfiles/startup/xset.sh
```

## Manuals
#### Alias syntax (for current session)
```bash
alias # show current aliases
alias p="pwd"
\p # disable temporarily
alias pl='p; ls' # multiple commands (or other aliases)
unalias p
```
