local ok, lspconfig = pcall(require, 'lspconfig')

if (not ok) then return end

lspconfig.clangd.setup {}
lspconfig.pyright.setup {}
lspconfig.sumneko_lua.setup {}
