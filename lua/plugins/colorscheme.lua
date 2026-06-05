return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        enabled = true,
        config = function()
            vim.cmd("colorscheme catppuccin-macchiato")
        end,
    },
    -- ROSE-PINE
    {
        "ellisonleao/gruvbox.nvim",
        enabled = false,
        config = function()
            vim.cmd("colorscheme gruvbox")
        end,
        opts = {}
    },
    -- ROSE-PINE
    {
        "rose-pine/neovim",
        name = "rose-pine",
        enabled = false,
        opts = {
            styles = {
                italic = false,
            },
        },
        config = function(_, opts)
            require('rose-pine').setup(opts)
            vim.cmd("colorscheme rose-pine")
        end,
    }
}
