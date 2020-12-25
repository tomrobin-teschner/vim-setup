" setup text editor

syntax on
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smartindent

set nowrap
set number

" deal with plug-ins
call plug#begin('~/.vim/plugged')

Plug 'junegunn/seoul256.vim'
Plug 'Valloric/YouCompleteMe'

call plug#end()

" set up colour scheme to be used
let g:seoul256_background = 234
colo seoul256
