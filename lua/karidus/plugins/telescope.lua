return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",
	-- or                              , branch = '0.1.x',
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
		vim.keymap.set("n", "<C-p>", builtin.git_files, {})
		vim.keymap.set("n", "<leader>dn", builtin.diagnostics, {})
		vim.keymap.set("n", "<leader>pl", builtin.live_grep, {})
		vim.keymap.set("n", "<leader>ps", function()
			builtin.grep_string({ search = vim.fn.input("Grep > ") })
		end)
		vim.keymap.set("n", "<leader>th", builtin.colorscheme, {})
		vim.keymap.set("n", "<leader>km", builtin.keymaps, {})
		vim.keymap.set("n", "<leader>bf", builtin.buffers, {})
		vim.keymap.set("n", "mp", builtin.man_pages, {})
		vim.keymap.set("n", "q:", builtin.command_history, {})
		vim.keymap.set("n", "q/", builtin.search_history, {})
		vim.keymap.set("n", "gd", builtin.lsp_definitions, {})
		vim.keymap.set("n", "grr", builtin.lsp_references, {})
		vim.keymap.set("n", "<leader>td", builtin.lsp_type_definitions, {
			desc = "Go to type definition."
		})


		require("telescope").setup({
			defaults = {
				file_ignore_patterns = {
					"%.pdf",
					".git/.*",
					"%.epub",
					"%.note"
				},
			},
			pickers = {
				colorscheme = {
					enable_preview = true,
					theme = "dropdown",
					layout_config = {
						bottom_pane = {
							preview_cutoff = 50,
							width = 1,
						}
					},
				},
				find_files = {
					theme = "ivy",
					layout_config = {
						bottom_pane = {
							preview_cutoff = 50,
							width = 1,
						}
					},
				},
				diagnostics = {
					theme = "dropdown",
				},
				live_grep = {
					theme = "ivy",
				},
				keymaps = {
					theme = "dropdown"
				},
				lsp_type_definitions = {
					theme = "cursor"
				},
				buffers = {
					theme = "ivy",
					layout_config = {
						bottom_pane = {
							preview_cutoff = 50,
							width = 1,
						}
					},
				},
				command_history = {
					layout_config = {
						anchor = "SE",
						height = 0.3,
						width = 0.37,
						prompt_position = 'top',
					}
				},
				search_history = {
					layout_config = {
						anchor = "NE",
						height = 0.3,
						width = 0.37,
						prompt_position = 'top',
					}
				},
				lsp_references = {
					theme = "cursor",
				}
			},
		})
	end,
}
