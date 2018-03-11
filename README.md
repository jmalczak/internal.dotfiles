# Jakub's dotfiles

Configurations and scripts needed to bootstrap macOS/Windows/Linux machine. Linux config is used mostly within WSL on Ubuntu. 
To install all files just run boostrap script from one of system specific folders.


## System Specific Folders

* \_mac - requires brew
* \_linux - require apt-get
* \_windows - require chocolatey and boxstarter


## Symlinks in home folder

All scripts depend on specific location on .internal.dotfiles folder. It should be symlinked in $HOME folder on any platform.

macOS / Linux
````bash
ln -s internal.dotfiles ~/.internal.dotfiles
````

Windows
````powershell
cd $HOME && cmd /c mklink -D .internal.dotfiles internal.dotfiles
````

## ZSH

Zsh use zgen plugins and they will be installed automatically after first run of zsh. More info about zgen (https://github.com/tarjoilija/zgen).


## Tmux

TPM plugin manager is used, you can install all plugins by pressing tmux prefix + I. More info about TPM (https://github.com/tmux-plugins/tpm).


## Vim

Neovim will be installed as part of the setup. Install plugins using vundle by typing :PluginInstall after you open vim.
