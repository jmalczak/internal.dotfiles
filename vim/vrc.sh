#!/bin/bash

vim .

rm _vimrc
rm _vsvimrc

cat base.vim > _vimrc
cat base.vim > _vsvimrc

cat $(ls configuration/shared/*.vim) >> _vsvimrc
cat $(ls configuration/shared/*.vim) >> _vimrc
cat $(ls configuration/vimonly/*.vim) >> _vimrc
