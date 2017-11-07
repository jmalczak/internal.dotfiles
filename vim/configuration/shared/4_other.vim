" fix issue with backspace before edit
set backspace=indent,eol,start
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set laststatus=2
set incsearch 

" set case sensitive search only if one of letters in pattern is uppercase
" for vsvim we have to set ic as well
set smartcase
set ic

" make sure that when searching result will be scrolled so it's at least 10
" lines from the edge of the screen
set scrolloff=10

" remove wrapping
set nowrap

" size of history
set history=1000

" set filetypes
au BufNewFile,BufRead *.ejs set filetype=html

" Enable folding
set foldmethod=indent
set foldlevel=99
