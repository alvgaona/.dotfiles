local use = require('packer').use

require('packer').startup(function()
	use 'wbthomason/packer.nvim'

	use 'mechatroner/rainbow_csv'

	use 'glepnir/dashboard-nvim'

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

	use {
		'lukas-reineke/indent-blankline.nvim',
		config = function()
			require("indent_blankline").setup { filetype_exclude = { "dashboard" } }
		end
	}

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

	use 'lewis6991/gitsigns.nvim'

	use {
		'catppuccin/nvim',
		as = 'catppuccin'
	}

	use 'hrsh7th/cmp-nvim-lsp'

	use 'hrsh7th/cmp-buffer'

	use 'hrsh7th/cmp-path'

	use 'hrsh7th/cmp-cmdline'

	use 'hrsh7th/nvim-cmp'

	use 'L3MON4D3/LuaSnip'

	use 'saadparwaiz1/cmp_luasnip'

	use 'nvim-neotest/neotest-vim-test'

	use 'nvim-neotest/neotest-plenary'

	use 'nvim-neotest/neotest-python'

	use 'nvim-neotest/neotest-go'

	use 'haydenmeade/neotest-jest'

	use {
		'rcarriga/neotest',
		requires = {
			'nvim-lua/plenary.nvim',
			'nvim-treesitter/nvim-treesitter',
			'antoinemadec/FixCursorHold.nvim',
		}
	}
	use { 'ellisonleao/glow.nvim', branch = 'main' }

	use 'puremourning/vimspector'

	use 'RRethy/vim-illuminate'

	use 'karb94/neoscroll.nvim'

	use 'kkoomen/vim-doge'

	use { "folke/todo-comments.nvim", requires = "nvim-lua/plenary.nvim" }

  use { 'akinsho/toggleterm.nvim', tag = 'v1.*' }
end)

require 'barbar-config'
require 'catppuccin-config'
require 'cmp-config'
require 'dashboard-config'
require 'vim-doge-config'
require 'gitsigns-config'
require 'nvim-lsp-installer-config'
require 'lsp-config'
require 'lualine-config'
require 'neotest-config'
require 'neoscroll-config'
require 'nvim-tree-config'
require 'vimspector-config'
require 'todo-comments-config'
require 'indent-blankline-config'
require 'toggleterm-config'

