local lsp = require('lspconfig')
local on_lsp_attach = require('core/keymap').on_lsp_attach
local capabilities = require('cmp_nvim_lsp').default_capabilities()

lsp['lua_ls'].setup({
    capabilities = capabilities,
    on_attach = on_lsp_attach,
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim', 'bufnr' },
            },
            workspace = {
                library = {
                    [ vim.fn.expand('$VIMRUNTIME/lua') ] = true,
                    [ vim.fn.stdpath('config') .. '/lua' ] = true,
                },
            },
        },
    },
})
