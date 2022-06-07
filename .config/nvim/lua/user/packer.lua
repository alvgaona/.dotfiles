local use = require('packer').use
require('packer').startup(function()
        use 'wbthomason/packer.nvim'

        use 'kyazdani42/nvim-web-devicons'

        use 'williamboman/nvim-lsp-installer'

        use 'neovim/nvim-lspconfig'

        use {
            'nvim-treesitter/nvim-treesitter',
            run = ':TSUpdate'
        }

        use {
            'nvim-lualine/lualine.nvim',
            requires = { 'kyazdani42/nvim-web-devicons', opt = true }
        }

        use {
            'kyazdani42/nvim-tree.lua',
            requires = { 'kyazdani42/nvim-web-devicons', opt = true }
        }

        use 'nvim-lua/plenary.nvim'

        use {
            'nvim-telescope/telescope.nvim',
            requires = { {'nvim-lua/plenary.nvim'} }
        }

        use 'lukas-reineke/indent-blankline.nvim'

        use 'preservim/nerdcommenter'

        use {
            'romgrk/barbar.nvim',
            requires = { 'kyazdani42/nvim-web-devicons' }
        }

        use 'tpope/vim-fugitive'

        use 'tpope/vim-repeat'

        use {
            'fatih/vim-go',
            run = ':GoUpdateBinaries'
        }

        use 'pangloss/vim-javascript'

        use 'leafgarland/typescript-vim'

        use 'MaxMellon/vim-jsx-pretty'

        use 'flowtype/vim-flow'

        use 'rust-lang/rust.vim'

        use 'airblade/vim-gitgutter'

        use 'iCyMind/NeoSolarized'

        use 'neovim/nvim-lspconfig'
        use 'hrsh7th/cmp-nvim-lsp'
        use 'hrsh7th/cmp-buffer'
        use 'hrsh7th/cmp-path'
        use 'hrsh7th/cmp-cmdline'
        use 'hrsh7th/nvim-cmp'

        use 'L3MON4D3/LuaSnip'
        use 'saadparwaiz1/cmp_luasnip'
end)
