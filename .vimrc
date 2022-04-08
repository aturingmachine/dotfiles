
syntax on
set number
colorscheme peachpuff

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set splitright
set colorcolumn=72

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
let mapleader = "\\"

" vv will exit insert mode
inoremap vv <Esc>

" ^s will save current buffer
inoremap <C-s> :w <cr>

" Space Space will enter insert mode
nnoremap <Space><Space> i

" leader leader will swap panes
nnoremap <leader><leader> <C-w><C-w>

" leader w will do a write
nnoremap <leader>w :w<cr>

" leader a will write quit all
nnoremap <leader>a :wqall<cr>

" leader s will split the current buffer to a new pane
nnoremap <leader>s :vsplit <cr>

" leader q will do a qall!
nnoremap <leader>q :qall!<cr>

" leader c will close current split window
nnoremap <leader>c <C-w>c

noremap <C-]> /[\({] <cr> n <Esc>

:autocmd InsertEnter,InsertLeave * set cul!

set noea

