--COLORSCHEME: LOW-TIDE
vim.g.colors_name = "low-tide"
local palette = {
	silver_sand = "#BFC1C2",
	roman_silver = "#869193",
	artichoke = "#9E9A7A",
	shadow = "#877a6a",
	axolotl = "#798e6b",
	slate_gray = "#718999",
	xanadu = "#6a877a",
	english_lavender = "#a68192",
	feldgrau = "#3F6152",
	cadet = "#556875",
	japanese_indigo = "#294C3F",
	ebony = "#59615C",
	outer_space = "#303E37",
}

vim.api.nvim_set_hl(0, "Normal",
	{ background = "None", foreground = palette.roman_silver })
vim.api.nvim_set_hl(0, "NormalNC",
	{ background = "None", foreground = palette.slate_gray })
vim.api.nvim_set_hl(0, "NormalFloat",
	{ background = "None", foreground = "None" })
vim.api.nvim_set_hl(0, "FloatBorder",
	{ background = "None", foreground = "None" })
vim.api.nvim_set_hl(0, "Cursor",
	{ background = palette.feldgrau, foreground = palette.artichoke })
vim.api.nvim_set_hl(0, "Conceal",
	{ background = "None", foreground = palette.outer_space })
vim.api.nvim_set_hl(0, "Constant",
	{ background = "None", foreground = palette.axolotl })
vim.api.nvim_set_hl(0, "String",
	{ background = "None", foreground = palette.axolotl })
vim.api.nvim_set_hl(0, "@variable",
	{ background = "None", foreground = palette.roman_silver })
vim.api.nvim_set_hl(0, "Identifier",
	{ background = "None", foreground = palette.roman_silver })
vim.api.nvim_set_hl(0, "Statement",
	{ background = "None", foreground = palette.xanadu })
vim.api.nvim_set_hl(0, "Special",
	{ background = "None", foreground = palette.artichoke })
vim.api.nvim_set_hl(0, "Type",
	{ background = "None", foreground = palette.slate_gray })
vim.api.nvim_set_hl(0, "Function",
	{ background = "None", foreground = palette.shadow })
vim.api.nvim_set_hl(0, "Visual",
	{ background = palette.feldgrau, foreground = palette.slate_gray })
vim.api.nvim_set_hl(0, "Question",
	{ background = "None", foreground = palette.slate_gray })
vim.api.nvim_set_hl(0, "Directory",
	{ background = "None", foreground = palette.slate_gray })
vim.api.nvim_set_hl(0, "LineNR",
	{ background = "None", foreground = palette.ebony })
vim.api.nvim_set_hl(0, "ColorColumn",
	{ background = palette.outer_space, foreground = "None" })
vim.api.nvim_set_hl(0, "MatchParen",
	{ background = "None", foreground = palette.silver_sand })
vim.api.nvim_set_hl(0, "Pmenu",
	{ background = palette.ebony, foreground = "None" })
vim.api.nvim_set_hl(0, "PmenuKind",
	{ background = palette.ebony, foreground = "None" })
vim.api.nvim_set_hl(0, "PmenuSel",
	{ background = palette.feldgrau, foreground = "None" })
vim.api.nvim_set_hl(0, "IncSearch",
	{ background = palette.cadet, foreground = "None" })
vim.api.nvim_set_hl(0, "PreProc",
	{ background = "None", foreground = palette.shadow })
vim.api.nvim_set_hl(0, "DiagnosticError",
	{ background = "None", foreground = palette.english_lavender })
vim.api.nvim_set_hl(0, "ErrorMsg",
	{ background = "None", foreground = palette.english_lavender })
vim.api.nvim_set_hl(0, "StatusLine",
	{ background = palette.outer_space, foreground = "None" })
