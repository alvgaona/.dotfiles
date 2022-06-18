local keymap = vim.api.nvim_set_keymap

-- nvim-tree
keymap('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true})
keymap('n', '<leader>r', ':NvimTreeRefresh<CR>', { noremap = true, silent = true })
keymap('n', '<C-f>', ':NvimTreeFindFile<CR>', { noremap = true, silent = true})

-- cursor
keymap('i', '<C-A>', '<Home>', { noremap = true })
keymap('i', '<C-E>', '<End>', { noremap = true })
keymap('n', '<C-A>', '<Home>', { noremap = true })
keymap('n', '<C-E>', '<End>', { noremap = true })

-- tmux navigator
vim.g.tmux_navigator_no_mappings = 1

keymap('n', '<Leader><C-h>', ':TmuxNavigateLeft<CR>', { noremap = true, silent = true })
keymap('n', '<Leader><C-j>', ':TmuxNavigateDown<CR>', { noremap = true, silent = true })
keymap('n', '<Leader><C-k>', ':TmuxNavigateUp<CR>', { noremap = true, silent = true })
keymap('n', '<Leader><C-l>', ':TmuxNavigateRight<CR>', { noremap = true, silent = true })

-- telescope
keymap('n', '<C-o>', '<cmd>Telescope find_files<CR>', { noremap = true, silent = true })
keymap('n', '<C-p>', '<cmd>Telescope live_grep<CR>', { noremap = true, silent = true })

-- text
keymap('n', '<Tab>', '>>', { noremap = true, silent = true })
keymap('n', '<S-Tab>', '<<', { noremap = true, silent = true })
keymap('n', '<S-Up>', ':m-2<CR>', { noremap = true })
keymap('n', '<S-Down>', ':m+<CR>', { noremap = true })
keymap('i', '<S-Up>', '<Esc>:m-2<CR>', { noremap = true })
keymap('i', '<S-Down>', '<Esc>:m+<CR>', { noremap = true })

-- splits
keymap('n', '<C-i>', '<C-W>k', { silent = true })
keymap('n', '<C-k>', '<C-W>j', { silent = true })
keymap('n', '<C-j>', '<C-W>h', { silent = true })
keymap('n', '<C-l>', '<C-W>l', { silent = true })

-- barbar
keymap('n', '<C-.>', ':BufferNext<CR>', { noremap = true })
keymap('n', '<C-,>', ':BufferPrevious<CR>', { noremap = true })
keymap('n', '<C-<>', ':BufferMovePrevious<CR>', { noremap = true })
keymap('n', '<C->>', ':BufferMoveNext<CR>', { noremap = true })
keymap('n', '<C-c>', ':BufferClose<CR>', { noremap = true })
--keymap('n', '', ':BufferWipeout<CR>', { noremap = true, silent = true })
--keymap('n', '', ':BufferCloseAllButCurrent<CR>', { noremap = true })
--keymap('n', '', ':BufferCloseAllButPinned<CR>', { noremap = true, silent = true })
--keymap('n', '', ':BufferCloseAllButCurrentOrPinned<CR>', { noremap = true, silent = true })
--keymap('n', '', ':BufferCloseBuffersLeft<CR>', { noremap = true, silent = true })
--keymap('n', '', ':BufferCloseBuffersRight<CR>', { noremap = true, silent = true })
keymap('n', '<Space>bb', ':BufferOrderByBufferNumber<CR>', { noremap = true, silent = true })
keymap('n', '<Space>bd', ':BufferOrderByDirectory<CR>', { noremap = true, silent = true })
keymap('n', '<Space>bl', ':BufferOrderByLanguage<CR>', { noremap = true, silent = true })
keymap('n', '<Space>bw', ':BufferOrderByWindowNumber<CR>', { noremap = true, silent = true })
