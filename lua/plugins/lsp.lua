return {
    {
        "neovim/nvim-lspconfig",

        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
        },

        config = function()
            require("mason").setup()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "pyright",
                    "ts_ls",
                },
                automatic_installation = true
            })

            vim.lsp.config("lua_ls", {})
            vim.lsp.config("pyright", {})
            vim.lsp.config("ts_ls", {})

            vim.lsp.enable("lua_ls")
            vim.lsp.enable("pyright")
            vim.lsp.enable("ts_ls")

            vim.api.nvim_create_autocmd("LspAttach", {
                callback = function(ev)
                    local opts = { buffer = ev.buf }

                    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
                    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
                    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
                    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
                    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
                    vim.keymap.set("n", "<leader>oi", function()
                        vim.lsp.buf.code_action({
                            context = {
                                only = { "source.organizeImports" },
                            },
                            apply = true,
                        })
                    end, { desc = "Organize imports" } )
                end,
            })
        end,
    },
}
