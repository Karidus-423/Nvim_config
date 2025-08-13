vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
	pattern = "*.bsq",
	callback = function()
		vim.bo.filetype = "bsq" -- assign a filetype (optional but useful)
		-- vim.lsp.start({
		-- 	name = 'bsqls',
		-- 	cmd = { '/home/karidus/projects/bsqls/main' },
		-- 	root_dir = vim.fs.root(0, { ".bsq" }) or vim.fn.getcwd()
		-- })
	end
})
