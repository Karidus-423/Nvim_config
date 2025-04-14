return {
	"OXY2DEV/markview.nvim",
	lazy         = false, -- Recommended
	-- ft = "markdown" -- If you decide to lazy-load anyway

	dependencies = {
		-- You will not need this if you installed the
		-- parsers manually
		-- Or if the parsers are in your $RUNTIMEPATH
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	config       = function()
		require("markview").setup({
			preview = {
				enable = true,
			},
			checkboxes = {
				enable = true,
				custom = {
					{
						--- Text Inside []
						---@type string
						match_string = "~",
						---@type string
						text = "",
						---@type string?
						hl = "MarkviewCheckboxPending",
						---@type string?
						scope_hl = nil
					},
				},
			},
			latex = {
				enable = true,

				--- Bracket conceal configuration.
				--- Shows () in specific cases
				parenthesis = {
					enable = true,

					--- Highlight group for the ()
					---@type string
					hl = "@punctuation.brackets"
				},

				--- LaTeX blocks renderer
				blocks = {
					enable = true,

					--- Highlight group for the block
					---@type string
					hl = "Code",

					--- Virtual text to show on the bottom
					--- right.
					--- First value is the text and second value
					--- is the highlight group.
					---@type string[]
					text = { " LaTeX ", "Special" }
				},

				--- Configuration for inline LaTeX maths
				inlines = {
					enable = true
				},

				--- Configuration for operators(e.g. "\frac{1}{2}")
				commands = {
					enable = true,
					configs = {
						sin = {
							--- Configuration for the extmark added
							--- to the name of the operator(e.g. "\sin").
							---
							--- see `nvim_buf_set_extmark()` for all the
							--- options.
							---@type table
							operator = {
								conceal = "",
								virt_text = { { "𝚜𝚒𝚗", "Special" } }
							},

							--- Configuration for the arguments of this
							--- operator.
							--- Item index is used to apply the configuration
							--- to a specific argument
							---@type table[]
							args = {
								{
									--- Extmarks are only added
									--- if a config for it exists.

									--- Configuration for the extmark
									--- added before this argument.
									---
									--- see `nvim_buf_set_extmark` for more.
									before = {},

									--- Configuration for the extmark
									--- added after this argument.
									---
									--- see `nvim_buf_set_extmark` for more.
									after = {},

									--- Configuration for the extmark
									--- added to the range of text of
									--- this argument.
									---
									--- see `nvim_buf_set_extmark` for more.
									scope = {}
								}
							}
						}
					}
				},

				--- Configuration for LaTeX symbols.

				subscripts = {
					enable = true,

					hl = "MarkviewLatexSubscript"
				},

				superscripts = {
					enable = true,

					hl = "MarkviewLatexSuperscript"
				}
			}
		})
	end
}
