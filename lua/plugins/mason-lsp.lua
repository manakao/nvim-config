local masonLsp = require('mason-lspconfig')

masonLsp.setup({
    ensure_installed = {
        "lua_ls",
    },
    automatic_installation = true,
})
