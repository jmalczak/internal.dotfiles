#!/bin/sh

replace_symlink() {
    rm -rf "$HOME/$2"
    ln -s "$HOME/.internal.dotfiles/$1" "$HOME/$2"
}

replace() {
    rm -rf "$HOME/$2"
    cp "$HOME/.internal.dotfiles/$1" "$HOME/$2"
}

create_if_not_exist() {
    if [ ! -d "$HOME/$1" ]
    then
        mkdir "$HOME/$1"
    fi
}

copy_if_not_exists() {
    if [ ! -e "$HOME/$2" ]
    then
        cp "$HOME/.internal.dotfiles/$1" "$HOME/$2"
    fi
}

copy_all_files_from_folder_if_not_exists() {
    for file in $(ls "$HOME/.internal.dotfiles/$1") 
    do
        if [ ! -e "$HOME/$2/$file" ]
        then
            cp "$HOME/.internal.dotfiles/$1/$file" "$HOME/$2"
        fi
    done
}
