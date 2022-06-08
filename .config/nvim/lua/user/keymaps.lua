-- nvim-tree
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>r', ':NvimTreeRefresh<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-f>', ':NvimTreeFindFile<CR>', { noremap = true, silent = true})

-- cursor
vim.api.nvim_set_keymap('i', '<C-A>', '<Home>', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-E>', '<End>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-A>', '<Home>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-E>', '<End>', { noremap = true })

-- tmux navigator
vim.g.tmux_navigator_no_mappings = 1

vim.api.nvim_set_keymap('n', '<Leader><C-h>', ':TmuxNavigateLeft<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader><C-j>', ':TmuxNavigateDown<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader><C-k>', ':TmuxNavigateUp<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader><C-l>', ':TmuxNavigateRight<CR>', { noremap = true, silent = true })

-- telescope
vim.api.nvim_set_keymap('n', '<C-o>', '<cmd>Telescope find_files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-p>', '<cmd>Telescope live_grep<CR>', { noremap = true, silent = true })

-- text
vim.api.nvim_set_keymap('n', '<S-Up>', ':m-2<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<S-Down>', ':m+<CR>', { noremap = true })
vim.api.nvim_set_keymap('i', '<S-Up>', '<Esc>:m-2<CR>', { noremap = true })
vim.api.nvim_set_keymap('i', '<S-Down>', '<Esc>:m+<CR>', { noremap = true })

-- splits
vim.api.nvim_set_keymap('n', '<C-i>', '<C-W>k', { silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-W>j', { silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-W>h', { silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-W>l', { silent = true })

-- barbar
vim.api.nvim_set_keymap('n', '<C-[>', ':BufferPrevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-]>', ':BufferNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-<>', ':BufferMovePrevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C->>', ':BufferMoveNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-c>', ':BufferClose<CR>', { noremap = true, silent = true })
--vim.api.nvim_set_keymap('n', '', ':BufferWipeout<CR>', { noremap = true, silent = true })
--vim.api.nvim_set_keymap('n', '', ':BufferCloseAllButCurrent<CR>', { noremap = true, silent = true })
--vim.api.nvim_set_keymap('n', '', ':BufferCloseAllButPinned<CR>', { noremap = true, silent = true })
--vim.api.nvim_set_keymap('n', '', ':BufferCloseAllButCurrentOrPinned<CR>', { noremap = true, silent = true })
--vim.api.nvim_set_keymap('n', '', ':BufferCloseBuffersLeft<CR>', { noremap = true, silent = true })
--vim.api.nvim_set_keymap('n', '', ':BufferCloseBuffersRight<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Space>bb', ':BufferOrderByBufferNumber<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Space>bd', ':BufferOrderByDirectory<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Space>bl', ':BufferOrderByLanguage<CR>', { noremap = true, silent = true })
 vim.api.nvim_set_keymap('n', '<Space>bw', ':BufferOrderByWindowNumber<CR>', { noremap = true, silent = true })
