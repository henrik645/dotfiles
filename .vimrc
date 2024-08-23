set nocompatible

" vim-plug needs to be installed!
"
" Plug plugins
call plug#begin()
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-commentary'
Plug 'machakann/vim-highlightedyank'
call plug#end()

let mapleader = " "

syntax enable
set encoding=utf-8
set fileencoding=utf-8

"line numbers
set nu

filetype plugin indent on
set tabstop=4 "one tab is shown with four spaces
set shiftwidth=4 "'>' is four spaces
set expandtab "<tab> key inserts four spaces

set autoindent
set smartindent
set breakindent "indent correctly even when line broken in several lines

"highlight search results incrementally
set is hls
"shortcut for removing highlight
nmap <silent><Leader>r :nohlsearch<CR>

"cursor can never go fully up or down (context)
set scrolloff=4

"line break only on whitespace (not in middle of word)
set linebreak

" move up a line even though its wrapped
nnoremap j gj
nnoremap k gk

nnoremap <Tab> <C-w>w

"open vimrc and reload it
nnoremap <localleader>v :tabnew ~/.vimrc<CR>
nnoremap <localleader>s :source ~/.vimrc<CR>

"NERDTree
nnoremap <C-n> :NERDTree<CR>
let NERDTreeQuitOnOpen=1

" reload changed files (if they haven't been edited inside of Vim)
set autoread

"easymotion prefix
map <Leader><Leader> <Plug>(easymotion-prefix)

" list buffers shortcut
nnoremap <leader>b :ls<cr>:b<space>

" open file explorer
nnoremap <leader>e :Explore<cr>

" show terminal
nnoremap <leader>t :term<cr>
nnoremap <leader>T :vert term<cr>

" remove delay when exiting insert mode
set esckeys!
