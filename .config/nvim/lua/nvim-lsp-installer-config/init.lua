local ok, lsp_installer = pcall(require, 'nvim-lsp-installer')

if (not ok) then return end

lsp_installer.setup {
    automatic_installation = true,

    ensure_installed = { 'pyright', 'clangd', 'sumneko_lua', 'eslint', 'tsserver' },

    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
}
