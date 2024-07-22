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
let mapleader=" "

call plug#begin()

Plug 'tpope/vim-surround'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'neoclide/coc.nvim'
Plug 'preservim/nerdtree'
" Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'https://github.com/rafi/awesome-vim-colorschemes'
"Plug 'rmagatti/auto-session'
Plug 'nvim-lua/plenary.nvim'
Plug 'Shatur/neovim-session-manager'
"Plug 'preservim/tagbar'
"Plug 'tc50cal/vim-terminal'
Plug 'nvim-tree/nvim-web-devicons'
"Plug 'folke/tokyonight.nvim'
Plug 'ghifarit53/tokyonight-vim/'
Plug 'jiangmiao/auto-pairs'

"Plug 'eldritch-theme/eldritch.nvim'
Plug 'nyoom-engineering/oxocarbon.nvim'
"Plug 'scottmckendry/cyberdream.nvim'
"Plug 'decaycs/decay.nvim'
Plug 'Everblush/nvim'

Plug 'akinsho/bufferline.nvim', 
call plug#end()

" colorscheme tokyonight-night
" colorscheme catppuccin-mocha
" colorscheme eldritch
colorscheme oxocarbon

let g:airline_theme = "tokyonight"
let g:airline#extensions#tabline#enabled = 0
" let g:airline_theme = "catpuccin"

autocmd VimEnter * TSEnable highlight

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

"inoremap <M-BS> <C-o>db
"inoremap <M-Del> <C-o>dw
nmap <F8> :TagbarToggle<CR>
nnoremap <TAB> :tabnext<CR>
nnoremap <S-TAB> :tabNext<CR>
nmap <leader>f :call CocAction("format")<CR>

nnoremap <leader>h :noh<CR>
xnoremap <leader>p "_dP

vnoremap <leader>y "+y

nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
let g:indentLine_char = '│'
"let g:indentLine_conceallevel=0
let g:vim_json_conceal=0

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirAllowCollapsible="-"

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
