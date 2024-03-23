return {
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        config = function()
            local lsp_zero = require('lsp-zero')
            lsp_zero.extend_lspconfig()

            lsp_zero.on_attach(
                function(client, bufnr)
                    -- see :help lsp-zero-keybindings
                    -- to learn the available actions
                    lsp_zero.default_keymaps({
                        buffer = bufnr,
                        preserve_mappings = false
                    })
                    -- Custom Keymaps
                    vim.keymap.set('n', 'gr', '<cmd>Telescope lsp_references<cr>', { buffer = bufnr })
                end)
            lsp_zero.set_sign_icons({
                error = '',
                warn = '',
                hint = '',
                info = ''
            })
            -- here you can setup the language servers
            local lspconfig = require('lspconfig')
            -- C/C++
            lspconfig.clangd.setup({})
            -- Nix
            lspconfig.nil_ls.setup({})
            -- Lua
            require('neodev').setup()
            lspconfig.lua_ls.setup({})
            -- CSS
            lspconfig.tsserver.setup({})
            -- Bash
            lspconfig.bashls.setup({})
            -- GDScript
            lspconfig.gdscript.setup({})
        end

    },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    {
        'hrsh7th/nvim-cmp',
        config = function()
            local cmp = require('cmp')
            local cmp_action = require('lsp-zero').cmp_action()

            cmp.setup({
                mapping = cmp.mapping.preset.insert({
                    -- `Enter` key to confirm completion
                    ['<CR>'] = cmp.mapping.confirm({ select = false }),

                    -- Ctrl+Space to trigger completion menu
                    ['<C-f>'] = cmp.mapping.complete(),

                    -- Scroll up and down in the completion documentation
                    ['<C-s>'] = cmp.mapping.scroll_docs(-4),
                    ['<C-d>'] = cmp.mapping.scroll_docs(4),
                })
            })
        end,
    },
    {
        'L3MON4D3/LuaSnip',
        dependencies = { "rafamadriz/friendly-snippets" },
    },
    { "folke/neodev.nvim", opts = {} },

}
