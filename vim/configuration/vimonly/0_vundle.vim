" set time vim waits for next character
set timeoutlen=200

" set leader key
let mapleader = "\,"

" set not compatible with vi
set nocompatible
" Make bundle work
set rtp+=~/.vim/bundle/Vundle.vim

" Vundle Install Part
call vundle#begin()

" Common Plugins
Plugin 'gmarik/Vundle.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'kien/ctrlp.vim'
    "plugin 'kien/ctrlp.vim' configuration
    let g:ctrlp_custom_ignore = {
                \ 'dir' : '\v[\/](node_modules|_bower_components|packages|bin|obj)|(.git|.swp)|(.pyc)$',
                \ 'file' : '\v\.(pyc|swp)$'
                \ }
Plugin 'scrooloose/nerdtree'
    let NERDTreeIgnore = ['\.pyc$', '\.sln$', '\.pyproj$', '\.DotSettings$', '.*node_modules.*$[[dir]]', '.*bower_components.*$[[dir]]','.*bin.*$[[dir]]']
    let NERDTreeWinSize = 40
    " plugin 'scrooloose/nerdtree" configuration
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
Plugin 'itchyny/lightline.vim'
Plugin 'bling/vim-bufferline'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
    " plugin 'plasticboy/vim-markdown' configuration
    let g:vim_markdown_folding_disabled=1
    au BufRead,BufNewFile *.md set filetype=markdown
Plugin 'vim-scripts/SearchComplete'
Plugin 'vim-scripts/surround.vim'
Plugin 'vim-scripts/matchit.zip'
Plugin 'vim-scripts/SyntaxAttr.vim'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-dispatch'
Plugin 'dracula/vim'
Plugin 'tmhedberg/SimpylFold'

call vundle#end()
