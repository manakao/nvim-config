vim.g.mapleader = " "

local keymap = vim.keymap
local opts = { noremap = true, silent = true, buffer = bufnr }

-- nvim-tree keymaps
-- https://github.com/nvim-tree/nvim-tree.lua/blob/master/doc/nvim-tree-lua.txt#L109

local function setup()
	keymap.set("n", "|", ":vsplit<CR>")
	keymap.set("n", "\\", ":split<CR>")
	keymap.set("t", "<esc>", "<C-\\><C-n>", opts)
	keymap.set("n", "<C-[>", ":tabnext<CR>", opts)
	keymap.set("n", "<C-]>", ":tabprevious<CR>", opts)
	keymap.set("n", "<C-n>", ":tabnew<CR>", opts)
	keymap.set("n", "<C-c>", ":tabclose<CR>", opts)

	keymap.set('n', '<leader>e', ':Neotree float focus<CR>')
	keymap.set('n', '<leader>o', ':Neotree float git_status<CR>')

end

local function on_lsp_attach()
	-- https://github.com/nvimdev/lspsaga.nvim

	keymap.set("n", "gf", "<cmd>Lspsaga lsp_finder<CR>", opts) -- show definition, references
	keymap.set("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>", opts) -- got to declaration
	keymap.set("n", "<C-b>", "<Cmd>Lspsaga goto_definition<CR>", opts) -- got to declaration
	keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts) -- see definition and make edits in window, <C-t> to jump back
	keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts) -- go to implementation
	keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts) -- see available code actions
	keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts) -- smart rename
	keymap.set("n", "<leader>D", "<cmd>Lspsaga show_line_diagnostics<CR>", opts) -- show  diagnostics for line
	keymap.set("n", "<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts) -- show diagnostics for cursor
	keymap.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts) -- jump to previous diagnostic in buffer
	keymap.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts) -- jump to next diagnostic in buffer
	keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts) -- show documentation for what is under cursor
	--keymap.set("n", "<leader>o", "<cmd>LSoutlineToggle<CR>", opts) -- see outline on right hand side
end

return {
	setup = setup,
	on_lsp_attach = on_lsp_attach,
}
