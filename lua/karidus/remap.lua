vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("x", "<leader>p", '"_DP')

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set({ "n", "v" }, "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<A-v>", "<C-v>")

vim.keymap.set({ "n", "v" }, "<C-d>", "<C-d>zz")
vim.keymap.set({ "n", "v" }, "<C-s>", "<C-u>zz")

vim.g.lsp_on = true
function _G.toggle_lsp()
	if vim.g.lsp_on then
		vim.g.lsp_on = false
		vim.diagnostic.enable(not vim.diagnostic.is_enabled())
	else
		vim.g.lsp_on = true
		vim.diagnostic.enable(not vim.diagnostic.is_enabled())
	end
end

vim.api.nvim_set_keymap('n', '<leader>m', ':Man <CR>', { silent = true, noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ll', ':call v:lua.toggle_lsp()<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>')
vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>')
