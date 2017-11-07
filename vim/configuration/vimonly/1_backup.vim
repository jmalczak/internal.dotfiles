" save undo between open / close sessions, disable swap and set backup and
" undo locations
set noswapfile
set backup
set undofile
set backupdir=~/.vim/dirs/backup
set undodir=~/.vim/dirs/undo

if !isdirectory(&backupdir)
  call mkdir(&backupdir, "p")
endif
if !isdirectory(&undodir)
  call mkdir(&undodir, "p")
endif
