" omnisharp build mapping
autocmd FileType cs nnoremap <leader>bu :wa!<cr>:OmniSharpBuild<cr>

" easy window navigation
nnoremap <silent> <c-l> <c-w>l
nnoremap <silent> <c-j> <c-w>j
nnoremap <silent> <c-h> <c-w>h
nnoremap <silent> <c-k> <c-w>k

" NERD Tree
nnoremap <silent> <F4> :NERDTreeToggle<CR>
nnoremap <silent> <F5> :NERDTreeFind<CR>

" ctrl p
nnoremap <leader>e :CtrlP .<CR>
nnoremap <leader>E :CtrlP<CR>
nnoremap <leader>b :CtrlPBuffer<CR>

" fix ctrl p keys
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
