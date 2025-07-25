return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",
	-- or                              , branch = '0.1.x',
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>pf", builtin.fd, {
			desc = "Pick files.",
		})
		vim.keymap.set("n", "<leader>pg", builtin.git_files, {
			desc = "Pick git files.",
		})
		vim.keymap.set("n", "<leader>dn", builtin.diagnostics, {
			desc = "Show all diagnostics.",
		})
		vim.keymap.set("n", "<leader>pl", builtin.live_grep, {
			desc = "Run live grep.",
		})
		vim.keymap.set("n", "<leader>ps",
			function()
				builtin.grep_string({ search = vim.fn.input("Grep > ") })
			end,
			{
				desc = "Pick grep output."
			})
		vim.keymap.set("n", "<leader>th", builtin.colorscheme, {
			desc = "Show colorschemes.",
		})
		vim.keymap.set("n", "<leader>km", builtin.keymaps, {
			desc = "Show all keymaps.",
		})
		vim.keymap.set("n", "<leader>bf", builtin.buffers, {
			desc = "Pick buffers.",
		})
		vim.keymap.set("n", "<leader>hl", builtin.highlights, {
			desc = "Show highlights.",
		})
		vim.keymap.set("n", "mp", builtin.man_pages, {
			desc = "Open man page."
		})
		vim.keymap.set("n", "q:", builtin.command_history, {
			desc = "Show cmd history.",
		})
		vim.keymap.set("n", "q/", builtin.search_history, {
			desc = "Show search history.",
		})
		vim.keymap.set("n", "gd", builtin.lsp_definitions, {
			desc = "Show lsp definitions."
		})
		vim.keymap.set("n", "grr", builtin.lsp_references, {
			desc = "Show lsp references."
		})


		require("telescope").setup({
			defaults = {
				file_ignore_patterns = {
					"%.pdf",
					".git/.*",
					"%.epub",
					"%.note"
				},
				border = true,
				borderchars = { "─", "│", "─", "│", "┏", "┓", "┛", "┗" },
			},
			pickers = {
				colorscheme = {
					enable_preview = true,
					theme = "dropdown",
					layout_config = {
						bottom_pane = {
							preview_cutoff = 10,
							width = 1,
						},
					},
				},
				fd = {
					layout_strategy = "horizontal",
					layout_config = {
						height = 0.8,
						width = 0.9,
						prompt_position = 'top',
						preview_cutoff = 10,
						preview_width = 50,
					}
				},
				diagnostics = {
					theme = "dropdown",
				},
				live_grep = {
					theme = "ivy",
				},
				keymaps = {
					theme = "dropdown",
				},
				lsp_type_definitions = {
					theme = "cursor"
				},
				buffers = {
					theme = "ivy",
					layout_config = {
						bottom_pane = {
							preview_cutoff = 50,
							anchor = "N",
							width = 1,
						}
					},
				},
				command_history = {
					layout_config = {
						anchor = "SE",
						height = 0.3,
						width = 0.6,
						prompt_position = 'top',
					}
				},
				search_history = {
					layout_config = {
						anchor = "SE",
						height = 0.3,
						width = vim.o.columns * 0.6,
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
