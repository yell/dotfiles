# dotfiles
## How to install
Get the repository
```bash
git clone git@github.com:monsta-hd/dotfiles.git
```
Config all by running
```bash
make
```
Or selectively by running
```bash
make {alias|terminal}
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
