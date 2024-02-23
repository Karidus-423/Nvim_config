return {
    { "windwp/nvim-autopairs",     event = "InsertEnter", opts = {} },
    { "echasnovski/mini.surround", event = "BufEnter",    opts = {} },
    { "shaunsingh/nord.nvim",      event = "VeryLazy" },
    vim.cmd("colorscheme sainte-adresse"),
}
