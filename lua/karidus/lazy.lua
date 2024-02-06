local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({ { import = "karidus.plugins" }, { import = "karidus.plugins.lsp" } },
    {
        ui = {
            border = "single"
        },
        {
            "nvim-treesitter/nvim-treesitter",
            build = ":TSUpdate",
            opts = {
                highlight = { enable = true },
            },
            config = function(_, opts)
                require("nvim-treesitter.configs").setup(opts)
            end,
        },
    }
)
