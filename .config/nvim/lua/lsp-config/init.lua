local ok, lspconfig = pcall(require, 'lspconfig')

if (not ok) then return end

vim.api.nvim_command [[ hi def link LspReferenceText CursorLine ]]
vim.api.nvim_command [[ hi def link LspReferenceWrite CursorLine ]]
vim.api.nvim_command [[ hi def link LspReferenceRead CursorLine ]]

-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set('n', '<leader>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<leader>f', vim.lsp.buf.formatting, bufopts)

  require('illuminate').on_attach(client)
  vim.g.Illuminate_delay = 500
  vim.api.nvim_set_keymap('n', '<a-n>', '<cmd>lua require"illuminate".next_reference{wrap=true}<cr>', {noremap=true})
  vim.api.nvim_set_keymap('n', '<a-p>', '<cmd>lua require"illuminate".next_reference{reverse=true,wrap=true}<cr>', {noremap=true})
  vim.api.nvim_set_keymap('n', '<a-o>', '<cmd>lua require"illuminate".toggle_pause()<cr>', {noremap=true})
end


lspconfig.clangd.setup {
  on_attach = on_attach,
}
lspconfig.pyright.setup {
  on_attach = on_attach,
}
lspconfig.sumneko_lua.setup {
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
	  globals = { 'vim' }
      }
    }
  }
}

lspconfig.eslint.setup {
  on_attach = on_attach
}

--local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
--for type, icon in pairs(signs) do
  --local hl = "DiagnosticSign" .. type
  --vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
--end

-- Add floating window to display diagnostics
--vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
-- Change diagnoistic sign (Highlight number instead of icon)
vim.cmd [[
  highlight! DiagnosticLineNrError guibg=SignColumn guifg=#F38BA8 gui=bold
  highlight! DiagnosticLineNrWarn guibg=SignColumn guifg=#F9E2AF gui=bold
  highlight! DiagnosticLineNrInfo guibg=SignColumn guifg=#A6E3A1 gui=bold
  highlight! DiagnosticLineNrHint guibg=SignColumn guifg=#89B4FA gui=bold
  
  sign define DiagnosticSignError text= texthl=DiagnosticSignError linehl= numhl=DiagnosticLineNrError
  sign define DiagnosticSignWarn text= texthl=DiagnosticLineNrWarn linehl= numhl=DiagnosticLineNrWarn
  sign define DiagnosticSignInfo text= texthl=DiagnosticSignInfo linehl= numhl=DiagnosticLineNrInfo
  sign define DiagnosticSignHint text= texthl=DiagnosticSignHint linehl= numhl=DiagnosticLineNrHint
]]

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = true,
  severity_sort = false,
})

--vim.api.nvim_create_autocmd("CursorHold", {
  --buffer = bufnr,
  --callback = function()
    --local opts = {
      --focusable = false,
      --close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
      --border = 'rounded',
      --source = 'always',
      --prefix = ' ',
      --scope = 'cursor',
    --}
    --vim.diagnostic.open_float(nil, opts)
  --end
--})

