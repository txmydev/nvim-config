return {
    {
        'saghen/blink.cmp',
        dependencies = {
            'saghen/blink.lib',
            'rafamadriz/friendly-snippets',
        },
        build = function()
            require("blink.cmp").build():pwait()
        end,

        ---@module 'blink.cmp'
        ---@type blink.cmp.Config
        opts = {
            keymap = {
                preset = 'none',
                -- ['<Enter>'] = { 'accept', 'snippet_forward', 'fallback' },
                ['<C-Space>'] = { 'show', 'show_documentation', 'hide_documentation' },
                ['<C-i>'] = { 'accept', 'snippet_forward', 'fallback' },
                ['<C-k>'] = { 'cancel', 'fallback' },
                ['<Esc>'] = { function(cmp) cmp.cancel(); vim.cmd("stopinsert"); end },
                ['<C-n>'] = { 'select_next' },
                ['<C-p>'] = { 'select_prev' },
                ['<C-j>'] = { 'scroll_documentation_up', 'fallback' },
                ['<C-m>'] = { 'scroll_documentation_down', 'fallback' },
            },
        },
    }
}
