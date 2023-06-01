set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'lervag/vimtex'
Plugin 'sirver/ultisnips'
Plugin 'junegunn/limelight.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'preservim/nerdtree'
" Plugin 'ycm-core/YouCompleteMe'
Plugin 'tpope/vim-surround'
Plugin 'easymotion/vim-easymotion'

call vundle#end()

" " Plug plugins
" call plug#begin()
" Plug 'prabirshrestha/vim-lsp'
" Plug 'mattn/vim-lsp-settings'
" call plug#end()

syntax enable
set encoding=utf-8
set fileencoding=utf-8

set nu

set expandtab
set tabstop=4
set shiftwidth=4
set smarttab
filetype plugin indent on

set autoindent
set smartindent
set breakindent "indent correctly even when line broken in several lines

"highlight search results incrementally
set is hls
"shortcut for removing highlight
nmap <silent> <leader>r :nohlsearch<CR>

"scrolloff
set scrolloff=4

"line break only on whitespace (not in middle of word)
set linebreak

" move up a line even though its wrapped
nnoremap j gj
nnoremap k gk

inoremap jj <Esc>

nnoremap <Tab> <C-w>w

let maplocalleader = "-"
" let mapleader = "\"
let mapleader = " "

"open vimrc and reload it
nnoremap <localleader>v :tabnew ~/.vimrc<CR>
nnoremap <localleader>s :source ~/.vimrc<CR>

" vimtex
" set conceallevel=2
nnoremap <localleader>t :VimtexTocOpen<CR>
let g:vimtex_view_method = 'skim'
let g:vimtex_view_skim_sync = 1
let g:vimtex_view_skim_activate = 1

"limelight
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_guifg = 'gray'

"limelight + goyo integration
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight

"ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"NERDTree
nnoremap <C-n> :NERDTree<CR>
let NERDTreeQuitOnOpen=1

"YouCompleteMe + VimTex
" if !exists('g:ycm_semantic_triggers')
"   let g:ycm_semantic_triggers = {}
" endif
" au VimEnter * let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme

hi clear Conceal "disable grey boxes on vimtex conceal

" reload changed files (if they haven't been edited inside of Vim)
set autoread

" change splits easier
" nmap <silent> <Space>l :wincmd l<CR>
" nmap <silent> <Space>k :wincmd k<CR>
" nmap <silent> <Space>j :wincmd j<CR>
" nmap <silent> <Space>h :wincmd h<CR>
" nmap <silent> <Space><Space> :wincmd w<CR>

"easier easymotion
map <Leader> <Plug>(easymotion-prefix)

"format files easier
xnoremap <silent> <leader>f :!fmt<CR>

nmap <leader><leader>t iHejsan<Esc><CR>
