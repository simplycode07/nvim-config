set number
set relativenumber
set mouse=a
set autoindent
set smartindent
set tabstop=4
set smarttab
set softtabstop=4
set shiftwidth=4
set autochdir

call plug#begin()

Plug 'neoclide/coc.nvim'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/terryma/vim-multiple-cursors'
Plug 'https://github.com/tc50cal/vim-terminal'
Plug 'https://github.com//ryanoasis/vim-devicons'
Plug 'https://github.com/folke/tokyonight.nvim'
Plug 'ghifarit53/tokyonight-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/indentLine'

set encoding=UTF-8
call plug#end()

:colorscheme tokyonight-night
let g:airline_theme = "tokyonight"

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <F1> :colorscheme tokyonight-night<CR>
"inoremap <M-BS> <C-o>db
"inoremap <M-Del> <C-o>dw
imap <C-BS> <C-W>
nmap <F8> :TagbarToggle<CR>

inoremap jk <ESC>
inoremap kj <ESC>
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
let g:indentLine_char = '|'
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirAllowCollapsible="-"

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
