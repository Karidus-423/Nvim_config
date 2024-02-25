return {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
        sections = {
            lualine_a = { 'branch' },
            lualine_b = { 'diff', 'diagnostics' }
        },
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' },
    }
}
