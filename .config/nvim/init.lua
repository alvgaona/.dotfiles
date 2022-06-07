vim.wo.number = true
vim.o.mouse = 'a'
vim.wo.numberwidth = 1
vim.o.clipboard = 'unnamed'

vim.o.showcmd = true
vim.o.ruler = true
vim.o.cursorline = true
vim.o.encoding = 'utf-8'
vim.bo.sw = 2
vim.wo.relativenumber = true

vim.bo.tabstop = 8
vim.bo.softtabstop = 0
vim.bo.expandtab = true
vim.bo.shiftwidth = 4
vim.o.smarttab = true

vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.termguicolors = true

vim.o.splitright = true

vim.cmd('syntax on')
vim.cmd('colorscheme NeoSolarized')

vim.api.nvim_set_option('updatetime', 100)


require('user.packer')
require('user.plugins.lsp_installer')
require('user.plugins.lspconfig')
require('user.plugins.lualine')
require('user.plugins.nvimtree')
require('user.plugins.barbar')

require('user.keymaps')

