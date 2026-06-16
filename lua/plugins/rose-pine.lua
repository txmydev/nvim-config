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
                -- ["@keyword.function"] =  { fg = "pine", bold = true },
                ["@keyword.return"] =  { fg = "pine", bold = true },
                ["@keyword"] =  { fg = "pine", bold = true },
                ["@lsp.type.modifier"]        = { fg = "pine", bold = true },
                ["@keyword.modifier"]         = { fg = "pine", bold = true },
                ["@lsp.type.void"]            = { fg = "pine", bold = true },
                ["javaStatement"]             = { fg = "pine", bold = true },
                ["@lsp.type.class"]           = { fg = "rose" },
                ["@type"]                     = { fg = "rose" },
                ["@lsp.type.method"]          = { fg = "text" },
                ["@lsp.typemod.field.static"] = { fg = "gold", italic = true },
                ["@lsp.type.parameter"]       = { fg = "iris" },
                ["@lsp.type.annotation"]      = { fg = "gold" },
                ["@lsp.type.variable"]        = { fg = "text" },
                ["@lsp.type.property"]        = { fg = "text" },
                ["@variable"]                 = { fg = "text" },
                ["@variable.member"]          = { fg = "text" },
                ["@lsp.type.function"]        = { fg = "text" },
                ["@function"]                 = { fg = "text" },
                ["@function.method"]          = { fg = "text" },
                ["@function.method.call"]     = { fg = "text" },
                ["javaType"]                  = { fg = "pine", bold = true },
                ["javaOperator"]              = { fg = "pine", bold = true },
                ["javaClassDecl"]              = { fg = "pine", bold = true },
            }
        })

        vim.cmd("colorscheme rose-pine")
    end,
}
