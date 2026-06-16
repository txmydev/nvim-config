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
            -- require("mason-lspconfig").setup_handlers({
            --     function(server_name)
            --         vim.lsp.setup(server_name, {})
            --     end
            -- })

            -- vim.lsp.config("lua_ls", {})
            -- vim.lsp.config("pyright", {})
            -- vim.lsp.config("ts_ls", {})
            -- vim.lsp.config("html", { filetypes = {"html", "templ" }})
            -- vim.lsp.config("emmet_language_server", {
            --     filetypes = {"html", "css", "javascript", "typescript", "templ" },
            --     init_options = {
            --         includeLanguages = {
            --             templ = "html",
            --         }
            --     },
            -- })
            --
            -- vim.lsp.enable("lua_ls")
            -- vim.lsp.enable("pyright")
            -- vim.lsp.enable("ts_ls")
            -- vim.lsp.enable("html")
            -- vim.lsp.enable("emmet_language_server")
            -- vim.lsp.enable("htmx")
            -- vim.lsp.enable("htmx")
            --

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
