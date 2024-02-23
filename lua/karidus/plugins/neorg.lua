return {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require("neorg").setup {
            load = {
                ["core.defaults"] = {},
                ["core.concealer"] = {},
                ["core.ui"] = {},
                ["core.keybinds"] = {
                    config = {
                        neorg_leader = "<Space>",
                        hook = function(keybinds)
                            keybinds.unmap("norg", "n", "<C-u>")
                        end
                    },
                },
                ["core.dirman"] = {
                    config = {
                        workspaces = {
                            notes = "~/notes",
                            Portfolio = "~/notes/portfolio",
                        },
                        default_workspace = "notes",
                        portfolio_workspace = "Portfolio"
                    },
                },
                ["core.export"] = {},
            },
        }

        vim.wo.foldlevel = 99
        vim.wo.conceallevel = 2
    end,
}
