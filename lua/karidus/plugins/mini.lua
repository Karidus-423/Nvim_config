return {
    { 'echasnovski/mini.notify',      version = false, opts = {} },
    { 'echasnovski/mini.map',         version = '*',   opts = {} },
    { 'echasnovski/mini.indentscope', version = false, opts = {} },
    {
        'echasnovski/mini.hipatterns',
        version = '*',
        event = "VeryLazy",
        opts = {
            highlighters = {
                done = { pattern = '%f[%w]()DONE()%f[%W]', group = 'MiniHipatternsDone' },
            }

        }
    },
}
