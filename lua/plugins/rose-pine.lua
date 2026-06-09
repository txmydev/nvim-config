return {
        "rose-pine/neovim",
        name = "rose-pine",
        enabled = true,
        opts = {
            styles = {
                italic = false,
            },
        },
        config = function()
            require('rose-pine').setup({
                styles = {
                    italic = false,
                },
                highlight_groups = {
                    -- 'private', 'void', 'static', 'final', etc. → bold cyan (like pine)
                    ["@lsp.type.modifier"]          = { fg = "pine", bold = true },
                    ["@keyword.modifier"]           = { fg = "pine", bold = true }, -- fallback
                    ["@lsp.type.void"]              = { fg = "pine", bold = true },

                    -- Class names (Validaciones, CiudadSieteNodo, Vertice, Point...) → smooth rose
                    ["@lsp.type.class"]             = { fg = "rose" },
                    ["@type"]                       = { fg = "rose" },

                    -- Methods stay distinct from classes
                    ["@lsp.type.method"]            = { fg = "text" },

                    -- Static fields (COLOR_CIRCULO_DEFAULT) → subtle gold, not glaring
                    ["@lsp.typemod.field.static"]   = { fg = "gold", italic = true },

                    -- Parameters stay readable
                    ["@lsp.type.parameter"]         = { fg = "iris" },

                    -- Annotations (@Override etc.)
                    ["@lsp.type.annotation"]        = { fg = "gold", italic = false },


                    -- Variable names (local vars, fields) → white
                    ["@lsp.type.variable"]          = { fg = "text" },
                    ["@lsp.type.property"]          = { fg = "text" },  -- instance fields (label, next)
                    ["@variable"]                   = { fg = "text" },
                    ["@variable.member"]            = { fg = "text" },

                    -- Method/function names → white
                    ["@lsp.type.function"]          = { fg = "text" },
                    ["@function"]                   = { fg = "text" },
                    ["@function.method"]            = { fg = "text" },
                    ["@function.method.call"]       = { fg = "text" },

                    ["javaType"]               = { fg = "pine", bold = true },  -- void, int, double...
                    ["javaOperator"]               = { fg = "pine", bold = true },  -- new keyword
                },
            })

            vim.cmd("colorscheme rose-pine")
        end,
}
