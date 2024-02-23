return {
    {
        "echasnovski/mini.animate",
        event = "VeryLazy",
        opts = {
            scroll = {
                enable = false,
            },
            resize = {
                enable = true,
            },
            open = {
                enable = true,
            },
            close = {
                enable = true,
            },
        },
    },
    {
        "edluffy/specs.nvim",
        event = "VeryLazy",
        config = function()
            local specs = require("specs")
            specs.setup({
                show_jums = true,
                min_jump = 10,
                popup = {
                    fader = require("specs").sin_fader,
                    resizer = function(width, ccol, cnt)
                        if width - cnt > 0 then
                            return { width - cnt, ccol - (width - cnt) / 2 + 1 }
                        else
                            return nil
                        end
                    end,
                },
            })
        end,
    },
}
