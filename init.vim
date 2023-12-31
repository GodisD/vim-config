let mapleader = " "

call plug#begin('~/.config/nvim/plugged')

"colorschemes
Plug 'matsuuu/pinkmare'
Plug 'ayu-theme/ayu-vim'
Plug 'gruvbox-community/gruvbox'

"Comment
Plug 'tpope/vim-commentary'

"GitSigns
Plug 'lewis6991/gitsigns.nvim'

"REST NVIM
Plug 'rest-nvim/rest.nvim'

"NerdTree
Plug 'preservim/nerdtree'

"Emmet
Plug 'mattn/emmet-vim'

"Lightline
Plug 'itchyny/lightline.vim'

" Pretty
Plug 'kyazdani42/nvim-web-devicons'
Plug 'machakann/vim-highlightedyank'

" Lsp
Plug 'neovim/nvim-lspconfig'     
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'onsails/lspkind-nvim'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

" Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

call plug#end()

lua require('godis')

set termguicolors
set encoding=UTF-8
set tabstop=4
set softtabstop=4
set expandtab
set smartindent
set shiftwidth=4
set number
set relativenumber
set numberwidth=4
set incsearch
set nohlsearch
set hidden
set scrolloff=8
set undofile
set ignorecase
set smartcase
set noshowmode
set signcolumn=number
set smartcase
set nowrap
set mouse=a
set signcolumn=yes
set colorcolumn=98

colorscheme pinkmare 
set background=dark
set guifont=JetBrainsMono\ Nerd\ Font\ Mono:h11

" colorscheme ayu 
" set background=dark

" let g:nvim_web_devicons_enable = 1

" Keymaps
let mapleader = ' '

map <C-t> :tabnew<CR>
map <C-x> :tabclose<CR>
map <C-[> :tabprev<CR>
map <C-]> :tabnext<CR>

nmap <C-j> <Plug>RestNvim

noremap <C-p> :Telescope live_grep<Cr>
noremap <C-f> :Telescope find_files<Cr>
noremap <Leader><C-p> :Telescope buffers<Cr>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '>-1<CR>gv=gv

nnoremap <C-l> gt
nnoremap <C-h> gT

nnoremap <C-b> :NERDTreeToggleVCS<CR>



