return {
	{
		"rebelot/kanagawa.nvim",
		lazy = false,
		config = function()
			-- Default options:
			require('kanagawa').setup({
				compile = false, -- enable compiling the colorscheme
				undercurl = true, -- enable undercurls
				commentStyle = { italic = true },
				functionStyle = {},
				keywordStyle = { italic = true },
				statementStyle = { bold = true },
				typeStyle = {},
				transparent = true, -- do not set background color
				dimInactive = false, -- dim inactive window `:h hl-NormalNC`
				terminalColors = true, -- define vim.g.terminal_color_{0,17}
				colors = { -- add/modify theme and palette colors
					palette = {
						fujiWhite = "#cccccc",
						sumiInk4 = "#363646",
						samuraiRed = "#c77575",
						peachRed = "#ac6767",
						autumYellow = "#DCA561",
						petal = "#af8794",
					},
					theme = {
						wave = {},
						lotus = {},
						dragon = {},
						all = { ui = { bg_gutter = "none" } }
					},
				},
				theme = "wave", -- Load "wave" theme when 'background' option is not set
				background = { -- map the value of 'background' option to a theme
					dark = "wave", -- try "dragon" !
					light = "lotus"
				},
				overrides = function(colors)
					local theme = colors.theme
					return {
						-- UI
						NormalFloat = { bg = "none" },
						FloatBorder = { bg = "none", fg = colors.palette.fujiWhite },
						FloatTitle = { bg = "none" },
						LineNr = { fg = colors.palette.fujiWhite },
						TelescopeBorder = { bg = "none", fg = colors.palette.fujiWhite },
						MarkviewCode = { bg = "#4f4f4f" },
						-- Save an hlgroup with dark background and dimmed foreground
						-- so that you can use it where your still want darker windows.
						-- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
						NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

						-- Popular plugins that open floats will link to NormalFloat by default;
						-- set their background accordingly if you wish to keep them dark and borderless
						LazyNormal = { bg = "none", fg = colors.palette.fujiWhite },
						-- Treesitter
						Function = { fg = colors.palette.autumYellow },
						["@punctuation.bracket"] = { fg = colors.palette.petal },


						--Markdown
						MarkviewHeading1 = { bg = colors.palette.fujiWhite, fg = "#1f518e" },
						MarkviewHeading2 = { fg = colors.palette.fujiWhite, bg = "#6eaeaf" },
						MarkviewHeading3 = { fg = "#757575", bg = "#cabf44" },
						MarkviewHeading4 = { fg = colors.palette.fujiWhite, bg = "#a780b3" },
						MarkviewHeading5 = { fg = colors.palette.fujiWhite, bg = "#ac6767" },
						MarkviewHeading6 = { fg = "#757575", bg = "#a5c38d" }




					}
				end,
			})
		end
	},
	--[[{
		"Karidus-423/sainte-adresse.nvim",
		opts = {},
		lazy = false,
		priority = 100
	}
	]]
}
