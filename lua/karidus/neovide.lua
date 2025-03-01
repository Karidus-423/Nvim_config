if vim.g.neovide then
	-- Put anything you want to happen only in Neovide here
	vim.o.guifont = "Monaspace Xenon:h13"
	vim.cmd [[colorscheme habamax]]
	vim.g.neovide_transparency = 0.9
	vim.g.neovide_normal_opacity = 0.9
	vim.g.neovide_refresh_rate = 100
	vim.g.neovide_refresh_rate_idle = 5
	vim.g.neovide_cursor_animate_in_insert_mode = true
	vim.g.neovide_cursor_animate_command_line = true
	vim.g.neovide_cursor_vfx_mode = "pixiedust"
end
