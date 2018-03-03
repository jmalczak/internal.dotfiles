#!/bin/sh

source ../bootstrap/bootstrap_shared.sh
echo "-----------------------------------------"
echo "Setting up the macOS system"
echo "-----------------------------------------"
echo ""

create_if_not_exist .config

echo "Installing apps with brew"
cd brew/
brew bundle
cd ../


echo "Configuring ssh"
create_if_not_exist .ssh
replace_symlink ssh/config .ssh/config


echo "Configuring zsh"
replace_symlink zsh/.zshrc .zshrc
replace_symlink zsh/.zpreztorc .zpreztorc


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

echo "Configuring karabiner"
replace_symlink _mac/karabiner .config/karabiner


echo "Configuring kitty"
create_if_not_exist .config/kitty
replace_symlink _mac/kitty/kitty.conf .config/kitty/kitty.conf
