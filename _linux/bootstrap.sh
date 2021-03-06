#!/bin/bash

source ../bootstrap/bootstrap_shared.sh
echo "-----------------------------------------"
echo "Setting up the Linux system"
echo "-----------------------------------------"
echo ""

create_if_not_exist .config

echo "Installing apps with apt-get"
sudo add-apt-repository -y ppa:neovim-ppa/stable
sudo add-apt-repository -y ppa:aacebedo/fasd

sudo apt-get update
sudo apt-get install -y zsh fish tmux neovim fasd language-pack-pl language-pack-pl-base mc tig ranger


echo "Configuring ssh"
create_if_not_exist .ssh
copy_if_not_exists _linux/ssh/config .ssh/config

chmod 600 ~/.ssh/config


echo "Configuring zsh"

if [ ! -d ~/.zgen ]
then
    git clone https://github.com/tarjoilija/zgen.git "${HOME}/.zgen"
fi

replace_symlink zsh/.zshrc .zshrc
copy_all_files_from_folder_if_not_exists _linux/zsh/configs .local_configs


echo "Configuring fish"
replace_symlink fish .config/fish


echo "Configuring tmux"
create_if_not_exist .tmux
create_if_not_exist .tmux/plugins

if [ ! -d ~/.tmux/plugins/tpm ]
then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

replace_symlink tmux/.tmux.conf .tmux.conf


echo "Configuring neovim"
create_if_not_exist .config/nvim
replace_symlink vim/_vimrc .config/nvim/init.vim
create_if_not_exist .vim

if [ ! -d ~/.vim/bundle ]
then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi


echo "Configuring mc"
replace_symlink mc .config/mc


echo "Configuring ranger"
create_if_not_exist .config/ranger
replace_symlink _linux/ranger .config/ranger
