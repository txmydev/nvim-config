return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        enabled = false,
        opts = {
            transparent_background = true,
            no_italic = true,
        },
        config = function(_, opts)
            require('catppuccin').setup(opts)
            -- vim.cmd("colorscheme catppuccin-macchiato")
        end,
    },
    -- GRUVBOX
    {
        "ellisonleao/gruvbox.nvim",
        enabled = false,
        opts = {
            transparent_mode = true,
        },
        config = function(_, opts)
            require('gruvbox').setup(opts)
            -- vim.cmd("colorscheme gruvbox")
        end,
    },
    -- VAGUE
    {
        "https://github.com/vague-theme/vague.nvim",
        name = "vague",
        enabled = false,
        opts = {
            transparent = true,
        },
        config = function(_, opts)
            require('vague').setup(opts)
            -- vim.cmd("colorscheme vague")
        end,
    },
    {
        "EdenEast/nightfox.nvim",
        enabled = false,
        config = function()
            require('nightfox').setup({
                options = {
                    transparent = true,
                }
            })
            vim.cmd("colorscheme nightfox")
        end,
    }
}
