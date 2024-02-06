return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",
	-- or                              , branch = '0.1.x',
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("telescope").setup({
			pickers = {
				colorscheme = {
					enable_preview = true,
				},
				find_files = {
					theme = "ivy",
				},
				diagnostics = {
					theme = "dropdown",
				},
			},
		})
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
		vim.keymap.set("n", "<C-p>", builtin.git_files, {})
		vim.keymap.set("n", "<leader>dn", builtin.diagnostics, {})
		vim.keymap.set("n", "<leader>ps", function()
			builtin.grep_string({ search = vim.fn.input("Grep > ") })
		end)
		vim.keymap.set("n", "<leader>th", builtin.colorscheme, {})
		vim.keymap.set("n", "<leader>km", builtin.keymaps, {})
		vim.keymap.set("n", "<leader>bf", builtin.buffers, {})
	end,
}
