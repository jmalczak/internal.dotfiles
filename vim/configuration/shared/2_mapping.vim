" set time vim waits for next character
set timeoutlen=800

" set leader key
let mapleader = "\,"

" BASIC
nnoremap ; :
vnoremap ; :
nnoremap : ;
vnoremap : ;

" map esc
inoremap jk <ESC>

" Copy and paste
vmap y ygv<ESC>
nnoremap <leader>y "+ygv<ESC>
nnoremap <leader>p "+p
vnoremap <leader>y "+ygv<ESC>
vnoremap <leader>p "+p

" Map cursor to move screen line wise not file line wise, good for long lines
nnoremap k gk
nnoremap j gj
nnoremap gk k
nnoremap gj j

" map standard undo
map <C-z> u

" map angle brackets to preserve selection in visual mode
vmap < <gv
vmap > >gv

" map tab to autocomplete in insert mode
imap <S-Tab> <C-P>

" indent as in Visual Studio
nnoremap <C-K><C-R> 1G=G
inoremap <C-K><C-R> 1G=G
vnoremap <C-K><C-R> 1G=G

" disable arrows
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

" buffers switch
nnoremap <leader>n :bnext<CR>
nnoremap <leader>m :bprev<CR>

" Fold
nnoremap <space> za
