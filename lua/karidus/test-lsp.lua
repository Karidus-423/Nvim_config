local client = vim.lsp.start_client {
	name = "serpentine",
	cmd = { "/home/kennett/personal/serpentine/main" }
}

if not client then
	vim.notify("Bad client start.")
	return
end

vim.api.nvim_create_autocmd("FileType", {
	pattern = "markdown",
	callback = function()
		vim.lsp.buf_attach_client(0, client)
	end
})
