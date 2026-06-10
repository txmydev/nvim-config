return {
    {
        'nvim-telescope/telescope.nvim',
        version = '*',
        lazy = false,
        dependencies = {
            'nvim-lua/plenary.nvim',
            -- optional but recommended
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        },
        keys = {
            { '<leader>ff', "<cmd>Telescope find_files<cr>", desc = "Find files (Root dir)" },
            { '<leader>fg', "<cmd>Telescope git_files<cr>", desc = "Git files (Root dir)" },
            { '<leader>sg', "<cmd>Telescope live_grep<cr>", desc = "Live Grep (Root dir)" },
            { '<leader>lb', "<cmd>Telescope buffers<cr>", desc = "List open buffers" },
        },
    }
}
