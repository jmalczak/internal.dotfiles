#!/bin/sh

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

echo "Setting up system"

rm -f ~/.internal.dotfiles 
ln -s "$SCRIPTPATH/../../../internal.dotfiles" ~/.internal.dotfiles

echo "Installing apps"

cd "$SCRIPTPATH/../brew/"
brew bundle
cd -

echo "Configuring ssh"

if [ ! -d ~/.ssh ]
then
    mkdir ~/.ssh
fi

rm -f ~/.ssh/config
ln -s "$SCRIPTPATH/../ssh/config" ~/.ssh/config

echo "Configuring zsh"

rm -rf ~/.zprezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

rm -f ~/.zshrc
ln -s "$SCRIPTPATH/../../zsh/.zshrc" ~/.zshrc


rm -f ~/.zpreztorc
ln -s "$SCRIPTPATH/../../zsh/.zpreztorc" ~/.zpreztorc

echo "Configuring tmux"

rm -f ~/.tmux.conf
ln -s "$SCRIPTPATH/../../tmux/.tmux.conf" ~/.tmux.conf

echo "Configuring vscode"

rm -f ~/Library/Application\ Support/Code/User/settings.json
ln -s "$SCRIPTPATH/../../vscode/settings.json" ~/Library/Application\ Support/Code/User/settings.json 

defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

echo "Configuring neovim"

if [ ! -d ~/.config ]
then
    mkdir ~/.config
fi

if [ ! -d ~/.config/nvim ]
then
    mkdir ~/.config/nvim
fi

rm -f ~/.config/nvim/init.vim
ln -s "$SCRIPTPATH/../../vim/_vimrc" ~/.config/nvim/init.vim

if [ ! -d ~/.vim ]
then
    mkdir ~/.vim
fi

if [ ! -d ~/.vim/bundle ]
then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

echo "Configuring karabiner"

if [ ! -d ~/.config/karabiner ]
then
    mkdir ~/.config/karabiner
fi

rm -f ~/.config/karabiner/karabiner.json
ln -s "$SCRIPTPATH/../karabiner/karabiner.json" ~/.config/karabiner/karabiner.json
