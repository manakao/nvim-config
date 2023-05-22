local treesitter = require('nvim-treesitter.configs')

treesitter.setup({
    highlight = {
        enable = true,
    },
    indent = { enable = true },
    autotag = { enable = true },
    ensure_installed = {
        "json",
        "markdown",
        "markdown_inline",
        "lua",
        "vim",
        "dockerfile",
        "gitignore",
    },
    auto_install = true,
})
