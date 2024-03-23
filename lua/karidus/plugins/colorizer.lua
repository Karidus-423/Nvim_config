local colored_fts = {
    "cfg",
    "conf",
    "css",
    "dosini",
    "javascript",
    "js",
    "json",
    "lua",
    "scss",
    "tsx",
    "yaml",
    "nix",
    "swayconfig",
}

-- Create Color Code.
return {
    {
        "uga-rosa/ccc.nvim",
        ft = colored_fts,
        cmd = "CccPick",
        config = function()
            vim.opt.termguicolors = true

            local ccc = require("ccc")
            local mapping = ccc.mapping
            ccc.setup({
                highlighter = {
                    auto_enable = true,
                    filetypes = colored_fts,
                },
            })

            ccc.output.hex.setup({ uppercase = true })
            ccc.output.hex_short.setup({ uppercase = true })
        end,
    },
}
