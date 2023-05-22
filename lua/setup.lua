local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath
    })
end

vim.opt.rtp:prepend(lazypath)

local opts = {}

local plugins = {
    { 'navarasu/onedark.nvim' },
    { 'nvim-tree/nvim-web-devicons' },

    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
    },

    {
        'nvim-treesitter/nvim-treesitter',
        build = ":TSUpdate",
        event = { "BufReadPost", "BufNewFile" }
    },

    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'neovim/nvim-lspconfig' },
    {
        "glepnir/lspsaga.nvim",
        event = "LspAttach",
        dependencies = {
            { "nvim-tree/nvim-web-devicons" },
            --{"nvim-treesitter/nvim-treesitter"}
        }
    },
    { 'jose-elias-alvarez/null-ls.nvim' },
    { 'jayp0521/mason-null-ls.nvim' },

    { 'hrsh7th/nvim-cmp' },
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-path' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'saadparwaiz1/cmp_luasnip' },
    { 'rafamadriz/friendly-snippets' },
    --{ 'onsails/lspkind.nvim' },
}

require('lazy').setup(plugins, opts);
