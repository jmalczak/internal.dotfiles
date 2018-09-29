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
    let NERDTreeIgnore = ['\.pyc$', '\.sln$', '\.pyproj$', '\.DotSettings$', '.*node_modules.*$[[dir]]', '.*bower_components.*$[[dir]]','.*bin.*$[[dir]]', 'bin$', 'obj$']
    let NERDTreeWinSize = 40
    let NERDTreeMinimalUI = 1
    let NERDTreeDirArrows = 1
    " plugin 'scrooloose/nerdtree" configuration
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
Plugin 'itchyny/lightline.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
    " plugin 'plasticboy/vim-markdown' configuration
    let g:vim_markdown_folding_disabled=1
    au BufRead,BufNewFile *.md set filetype=markdown
Plugin 'vim-scripts/surround.vim'
Plugin 'vim-scripts/matchit.zip'
Plugin 'vim-scripts/SyntaxAttr.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-dispatch'
Plugin 'dracula/vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'posva/vim-vue'

call vundle#end()
