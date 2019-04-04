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
copy_if_not_exists _mac/ssh/config .ssh/config

chmod 600 ~/.ssh/config


echo "Configuring zsh"

if [ ! -d ~/.zgen ]
then
    git clone https://github.com/tarjoilija/zgen.git "${HOME}/.zgen"
fi

replace_symlink zsh/.zshrc .zshrc
create_if_not_exist .local_configs
copy_all_files_from_folder_if_not_exists _mac/zsh/configs .local_configs


echo "Configuring tmux"
create_if_not_exist .tmux
create_if_not_exist .tmux/plugins

if [ ! -d ~/.tmux/plugins/tpm ]
then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

replace_symlink tmux/.tmux.conf .tmux.conf


echo "Configuring vscode"
create_if_not_exist Library/Application\ Support/Code/
create_if_not_exist Library/Application\ Support/Code/User/
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


echo "Configuring ideavim"
replace_symlink vim/_vsvimrc .ideavimrc


echo "Configuring karabiner"
replace_symlink _mac/karabiner .config/karabiner


echo "Configuring kitty"
create_if_not_exist .config/kitty
replace_symlink _mac/kitty/kitty.conf .config/kitty/kitty.conf


echo "Configuring alacritty"
create_if_not_exist .config/alacritty
replace_symlink _mac/alacritty/alacritty.yml .config/alacritty/alacritty.yml


echo "Configuring ranger"
create_if_not_exist .config/ranger
replace_symlink _mac/ranger .config/ranger


echo "Configuring chunkwm"
replace_symlink _mac/chunkwm/.chunkwmrc .chunkwmrc 
chmod a+x ~/.chunkwmrc
brew services start chunkwm


echo "Configure macOS"

defaults write -g InitialKeyRepeat -int 15
defaults write -g KeyRepeat -int 2 
defaults write -g ApplePressAndHoldEnabled -bool false
