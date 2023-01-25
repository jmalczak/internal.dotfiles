syntax on
filetype plugin indent on
let home=$HOME

set encoding=utf-8
set fillchars=vert:\│

" color scheme
colorscheme dracula

" color scheme override
hi htmlH1 ctermfg=80
hi EndOfBuffer ctermfg=black ctermbg=black

" highlight curren line 
set cursorline

if has("gui_running")
  if has("gui_gtk2")
  elseif has("gui_macvim")
  elseif has("gui_win32")
    set guifont=Consolas:h11
  endif
endif
