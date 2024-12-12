return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{ "folke/neodev.nvim", ft = { "lua" }, opts = {} },
		},
		config = function()
			local lsp = require("lspconfig")
			--Lua
			lsp.lua_ls.setup({})
			--Clang
			lsp.clangd.setup({})
			--Zig
			lsp.zls.setup({})
			--Deno
			lsp.denols.setup({
				root_dir = lsp.util.root_pattern("deno.json", "deno.jsonc"),
			})
			--JS/TS
			lsp.ts_ls.setup({
				root_dir = lsp.util.root_pattern("package.json"),
				single_file_support = false
			})
		end
	},

}
