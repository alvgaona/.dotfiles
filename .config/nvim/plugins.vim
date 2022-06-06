call plug#begin('~/.vim/plugged')

Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
"Plug 'scrooloose/nerdtree'
"Plug 'ryanoasis/vim-devicons'
"Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'preservim/nerdcommenter'
Plug 'romgrk/barbar.nvim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'MaxMellon/vim-jsx-pretty'
Plug 'flowtype/vim-flow'
Plug 'rust-lang/rust.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()
