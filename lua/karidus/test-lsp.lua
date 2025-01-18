local client = vim.lsp.start_client {
	name = "serpentine",
	cmd = { "/home/karidus/personal/serpentine/main" },
}

if not client then
	vim.notify("client no good")
	return
end


vim.api.nvim_create_autocmd("FileType", {
	pattern = "markdown",
	callback = function()
		vim.lsp.buf_attach_client(0, client)
	end,
})
