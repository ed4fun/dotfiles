" Based on HolaMundo's config
" https://www.youtube.com/watch?v=XgQFzi3VkC8
" Shows line numbers
set number 
" Enables mouse in all modes
set mouse=a 
set numberwidth=1
" Ensures copy/paste using standard Vim
set clipboard=unnamedplus 
set showcmd
" Show the cursor position
set ruler 
" Highlights the line where your cursor is
set cursorline 
set encoding=utf-8
" Shows matching parenthesis, bracket or brace
set showmatch 
" Lines above and below will be numbered
set relativenumber 
" Always displays status line
set laststatus=2 
" The number of spaces used for (auto)indentation.
set sw=2 
" Defines the width of the tab character - must be consistent with sw
set tabstop=2 
" Defines the number of spaces Vim uses for a 'single' level of indentation
set shiftwidth=2 
" Crucial setting to convert any tab character into spaces defined by tabstop
set expandtab 
" Highlight searches
set hlsearch
" Enable syntax highlighting every time you open vim
syntax on 
" Ensures Vim detects the file type for proper syntax highlighting
filetype on 

" Configuring vim-plug -- https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

" Themes
Plug 'morhetz/gruvbox'

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'

call plug#end()

" Changing the theme
let g:gruvbox_contrast_dark="hard"
set background=dark
colorscheme gruvbox

" Config tree view
let NERDTreeQuitOnOpen=1

" Config mappings
let mapleader=" "
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind <CR>
nmap <Leader>w :w<CR>
nmap <Leader>x :wq<CR>

