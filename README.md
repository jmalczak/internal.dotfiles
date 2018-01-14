# Jakub's dotfiles

## System Specific Folders

_mac - MacOS specific
     - Require brew 
_linux - Linux specific
       - Require apt-get
_windows - Windows specific
         - Require chocolatey and boxstarter

## Symlinks in home folder
ln -s internal.dotfiles ~/.internal.dotfiles for macOs and Linux
cd $HOME && cmd /c mklink -D .internal.dotfiles internal.dotfiles for Windows

## ZSH configuration require prezto
https://github.com/sorin-ionescu/prezto

## Install
To install, use system specific install scripts
