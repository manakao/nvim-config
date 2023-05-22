local masonNullLs = require('mason-null-ls')

masonNullLs.setup({
    ensure_installed = {
        "stylua",
    },
    automatic_installation = true,
})
