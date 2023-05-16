local ok, lsp_installer = pcall(require, 'mason')

if (not ok) then return end

lsp_installer.setup {
    automatic_installation = true,

    ensure_installed = { 'pyright', 'clangd', 'lua_ls', 'gopls', 'tsserver', 'html',  },

    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
}
