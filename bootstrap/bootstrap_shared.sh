#!/bin/sh

replace_symlink() {
    rm -f $2
    ln -s $1 $2
}

create_if_not_exist() {
    if [ ! -d $1 ]
    then
        mkdir $1
    fi
}
