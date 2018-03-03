#!/bin/sh

source ../bootstrap/bootstrap_shared.sh
echo "-----------------------------------------"
echo "Setting up the macOS system"
echo "-----------------------------------------"
echo ""


echo "Installing apps with brew"
cd brew/
brew bundle
cd -


echo "Configuring ssh"
create_if_not_exists ~/.ssh
replace_symlink ssh/config ~/.ssh/config


echo "Configuring zsh"
replace_symlink zsh/.zshrc ~/.zshrc
replace_symlink zsh/.zpreztorc ~/.zpreztorc


echo "Configuring tmux"
replace_symlink tmux/.tmux.conf ~/.tmux.conf


echo "Configuring vscode"
replace_symlink vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false


echo "Configuring neovim"
create_if_not_exists ~/.config
create_if_not_exists ~/.config/nvim
replace_symlink vim/_vimrc ~/.config/nvim/init.vim
create_if_not_exists ~/.vim

if [ ! -d ~/.vim/bundle ]
then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

echo "Configuring karabiner"
create_if_not_exists ~/.config/karabiner
replace_symlink karabiner/karabiner.json ~/.config/karabiner/karabiner.json
