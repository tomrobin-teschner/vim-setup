" setup text editor

syntax on
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smartindent
set encoding=UTF-8
set colorcolumn=121

set nowrap
set number

" deal with plug-ins
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'Valloric/YouCompleteMe'
Plug 'junegunn/seoul256.vim'
Plug 'mg979/vim-visual-multi'
Plug 'airblade/vim-gitgutter'
Plug 'ntpeters/vim-better-whitespace'

call plug#end()

" set up colour scheme to be used
let g:seoul256_background = 234
colo seoul256

" === NERDTree specific setup ===
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree 

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * silent NERDTreeMirror

" === vim-visual-multi speific setup ===
let g:VM_maps = {}
let g:VM_maps['Find Under']         = '<C-d>'           " replace C-n
let g:VM_maps['Find Subword Under'] = '<C-d>'           " replace visual C-n

" === vim-better-whitespace specific setup ===
highlight ExtraWhitespace ctermbg=red guibg=red
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1