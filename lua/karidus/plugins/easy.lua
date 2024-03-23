return {
    { "windwp/nvim-autopairs",        event = "InsertEnter", opts = {} },
    { "echasnovski/mini.surround",    event = "BufEnter",    opts = {} },
    { "shaunsingh/nord.nvim",         event = "VeryLazy" },
    { "NoahTheDuke/vim-just",         ft = { "just" } },
    { "IndianBoy42/tree-sitter-just", opts = {} },
    {
        'glacambre/firenvim',

        -- Lazy load firenvim
        -- Explanation: https://github.com/folke/lazy.nvim/discussions/463#discussioncomment-4819297
        lazy = not vim.g.started_by_firenvim,
        build = function()
            vim.fn["firenvim#install"](0)
        end
    },

    vim.cmd("colorscheme sainte-adresse"),
}
