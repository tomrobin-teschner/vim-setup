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

" style *.tpp files lie cpp files
autocmd BufNewFile,BufRead,BufReadPost *.tpp set filetype=cpp

" deal with plug-ins
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'Valloric/YouCompleteMe'
Plug 'junegunn/seoul256.vim'
Plug 'mg979/vim-visual-multi'
Plug 'airblade/vim-gitgutter'
Plug 'ntpeters/vim-better-whitespace'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'rhysd/vim-clang-format'

call plug#end()

" set up colour scheme to be used
let g:seoul256_background = 234
colo seoul256

" === NERDTree specific setup ===
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <A-Right> <C-PageDown>
nnoremap <A-Left> <C-PageUp>

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" Start NERDTree when vim launches.
autocmd VimEnter * NERDTree

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * silent NERDTreeMirror

" === vim-visual-multi speific setup ===
let g:VM_maps = {}
let g:VM_maps['Find Under']         = '<C-d>'
let g:VM_maps['Find Subword Under'] = '<C-d>'

" === vim-better-whitespace specific setup ===
highlight ExtraWhitespace ctermbg=red guibg=red
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

" === vim-airline (theme) specific setup
let g:airline_theme='Cobalt 2'

" === vim-clang-format specific setup ===
let g:clang_format#detect_style_file = 1
nnoremap <C-S-c> :ClangFormat<CR>
inoremap <C-S-c> <ESC>:ClangFormat<CR>==gi
vnoremap <C-S-c> <ESC>:ClangFormat<CR>==gv

" === custom key bindings ===

" move current line up / down
nnoremap <A-Down> :m .+1<CR>==
nnoremap <A-Up> :m .-2<CR>==
inoremap <A-Down> <Esc>:m .+1<CR>==gi
inoremap <A-Up> <Esc>:m .-2<CR>==gi
vnoremap <A-Down> :m '>+1<CR>gv=gv
vnoremap <A-Up> :m '<-2<CR>gv=gv

" duplicate current line to the top/bottom
nnoremap <A-S-Down> yyp
nnoremap <A-S-Up> yyP
inoremap <A-S-Down> <ESC>yyp==gi
inoremap <A-S-Up> <ESC>yyP==gi
vnoremap <A-S-Down> <ESC>yyp==gv
vnoremap <A-S-Up> <ESC>yyP==gv

" delete whole line (vscode compatible)
nnoremap <C-S-k> dd
inoremap <C-S-k> <ESC>dd==gi
vnoremap <C-S-k> <ESC>dd==gv

" shift focus to next window
nnoremap <Leader><Right> <C-w>w
nnoremap <Leader><Left> <C-w>p

" adjust color scheme
highlight Pmenu ctermfg=253 ctermbg=237 guifg=#dadada guibg=#3a3a3a
