#!/bin/bash

source ../bootstrap/bootstrap_shared.sh
echo "-----------------------------------------"
echo "Setting up the Linux system"
echo "-----------------------------------------"
echo ""

create_if_not_exist .config

echo "Installing apps with apt-get"

sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install -y zsh tmux neovim


echo "Configuring ssh"
create_if_not_exist .ssh
replace_symlink _linux/ssh/config .ssh/config


echo "Configuring zsh"

if [ ! -d ~/.zgen ]
then
    git clone https://github.com/tarjoilija/zgen.git "${HOME}/.zgen"
fi

replace_symlink zsh/.zshrc .zshrc


echo "Configuring tmux"
replace_symlink tmux/.tmux.conf .tmux.conf


echo "Configuring vscode"
replace_symlink vscode/settings.json Library/Application\ Support/Code/User/settings.json
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false


echo "Configuring neovim"
create_if_not_exist .config/nvim
replace_symlink vim/_vimrc .config/nvim/init.vim
create_if_not_exist .vim

if [ ! -d ~/.vim/bundle ]
then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
