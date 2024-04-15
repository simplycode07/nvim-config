set number
set relativenumber
set mouse=nv
set autoindent
set smartindent
set tabstop=4
set smarttab
set softtabstop=4
set shiftwidth=4
set autochdir
set encoding=UTF-8

call plug#begin()

Plug 'tpope/vim-surround'
Plug 'makerj/vim-pdf'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'neoclide/coc.nvim'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'https://github.com/rafi/awesome-vim-colorschemes'
"Plug 'rmagatti/auto-session'
Plug 'nvim-lua/plenary.nvim'
Plug 'Shatur/neovim-session-manager'
Plug 'preservim/tagbar'
Plug 'terryma/vim-multiple-cursors'
Plug 'tc50cal/vim-terminal'
Plug 'ryanoasis/vim-devicons'
Plug 'folke/tokyonight.nvim'
Plug 'ghifarit53/tokyonight-vim/'
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/indentLine'

call plug#end()

colorscheme tokyonight-night
" colorscheme catppuccin-mocha

let g:airline_theme = "tokyonight"
" let g:airline_theme = "catpuccin"

autocmd VimEnter * TSEnable highlight

nnoremap <ESC> :noh<CR><ESC>
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

"inoremap <M-BS> <C-o>db
"inoremap <M-Del> <C-o>dw
nmap <F8> :TagbarToggle<CR>

"inoremap jk <ESC>
"inoremap kj <ESC>
nnoremap <TAB> :tabnext<CR>
nnoremap <S-TAB> :tabNext<CR>


nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
let g:indentLine_char = '│'

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirAllowCollapsible="-"

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"


