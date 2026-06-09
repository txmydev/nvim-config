return {
    { "catppuccin/nvim",
        name = "catppuccin",
        enabled = true,
        opts = {
            transparent_background = true,
            no_italic = true,
        },
        config = function(_, opts)
            require('catppuccin').setup(opts)
            vim.cmd("colorscheme catppuccin-macchiato")
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
            vim.cmd("colorscheme gruvbox")
        end,
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
            vim.cmd("colorscheme vague")
        end,
    }
}
