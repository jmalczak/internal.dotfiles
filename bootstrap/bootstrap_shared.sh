#!/bin/sh

replace_symlink() {
    rm -rf "$HOME/$2"
    ln -s "$HOME/.internal.dotfiles/$1" "$HOME/$2"
}

create_if_not_exist() {
    if [ ! -d "$HOME/$1" ]
    then
        mkdir "$HOME/$1"
    fi
}
