
syntax on
set number
colorscheme angr

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set splitright

set cursorline 
set mouse=a

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 10
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END

" This is where we set custom leader mappings
let mapleader = "`"

" `` will write current buffer
nnoremap <leader><leader> :w<cr>

" ` will write quit all
nnoremap <leader> :wqall<cr>

" `s will split the current buffer to a new pane
nnoremap <leader>s :vsplit <cr>

" `q will do a qall!
nnoremap <leader>q :qall!<cr>

" `c will close current split window
nnoremap <leader>c <C-w>c

:autocmd InsertEnter,InsertLeave * set cul!

set noea

