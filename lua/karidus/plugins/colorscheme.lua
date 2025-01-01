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
						waveBlue2 = "#2D4F67",
						waveAqua2 = "#7AA89F",
						boatYellow1 = "#938056",
						boatYellow2 = "#C0A36E",
						lightBlue = "#A3D4D5",
						autumGreen = "#76946A",
						katanaGrey = "#717C7C",
						katanaBronze = "#757575",
					},
					theme = {
						all = { ui = { bg_gutter = "none" } }
					},
				},
				theme = "dragon", -- Load "wave" theme when 'background' option is not set
				background = { -- map the value of 'background' option to a theme
					dark = "dragon", -- try "dragon" !
					light = "dragon"
				},
				overrides = function(colors)
					local theme = colors.theme
					local pick = colors.palette
					return {
						-- UI
						NormalFloat = { bg = "none" },
						FloatBorder = { bg = "none", fg = pick.fujiWhite },
						FloatTitle = { bg = "none" },
						LineNr = { fg = pick.katanaGrey },
						TelescopeBorder = { bg = "none", fg = pick.fujiWhite },
						MarkviewCode = { bg = "#4f4f4f" },
						-- Save an hlgroup with dark background and dimmed foreground
						-- so that you can use it where your still want darker windows.
						-- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
						NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

						-- Popular plugins that open floats will link to NormalFloat by default;
						-- set their background accordingly if you wish to keep them dark and borderless
						LazyNormal = { bg = "none", fg = pick.fujiWhite },
						-- Treesitter
						Function = { fg = pick.autumYellow },
						["@punctuation.bracket"] = { fg = pick.petal },


						--Markdown
						MarkviewHeading1 = { bg = pick.fujiWhite, fg = pick.waveBlue2 },
						MarkviewHeading2 = { fg = pick.fujiWhite, bg = pick.waveAqua2 },
						MarkviewHeading3 = { fg = pick.fujiWhite, bg = pick.boatYellow1 },
						MarkviewHeading4 = { fg = pick.katanaBronze, bg = pick.boatYellow2 },
						MarkviewHeading5 = { fg = pick.katanaBronze, bg = pick.lightBlue },
						MarkviewHeading6 = { fg = pick.fujiWhite, bg = pick.autumGreen }
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
