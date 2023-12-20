return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"saadparwaiz1/cmp_luasnip",
		"L3M0N4D3/LuaSnip",
		"rafamadriz/friendly-snippets",
	},
	config = function()
		local cmp = require("cmp")

		local luasnip = require("luasnip")

		require("luasnip.loaders.from_vscode").lazy_load()
		cmp.setup({
			completion = {
				completeopt = "menu,menuone,preview,noselect",
			},
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				["<CR>"] = cmp.mapping.confirm({ select = false }),
				["<C-e>"] = cmp.mapping.abort(),
				["<C-Space>"] = cmp.mapping.complete(),
			}),
			--Sources for autocompletion *order determines priority
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip" }, --Snippets
				{ name = "buffer" }, -- text of current buffer
				{ name = "path" }, -- file system paths
			}),
		})
	end,
}
