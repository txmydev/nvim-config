return {
	{
		{
			'nvim-treesitter/nvim-treesitter',
			lazy = false,
			build = function()
				local TS = require('nvim-treesitter')
				if not TS.get_installed then
					return
				end
			end,
			cmds = { "TSUpdate", "TSInstall", "TSUninstall", "TSLog" },
			opts_extend = { "ensure_installed " },
			opts = {
				indent = { enable = true },
				highlight = { enable = true },
				folds = { enable = true },
				ensure_installed = {
					"bash",
					"c",
					"diff",
					"html",
					"javascript",
                    "jsdoc",
					"java",
					"json",
					"lua",
					"luadoc",
					"luap",
					"markdown",
					"markdown_inline",
					"printf",
					"python",
					"query",
					"regex",
					"toml",
					"tsx",
					"typescript",
					"vim",
					"vimdoc",
					"xml",
					"yaml",
				}
			},
			config = function(_, opts)
                local TS = require('nvim-treesitter')
                TS.setup(opts)

                vim.diagnostic.config({
                    virtual_text = true,
                    signs = false
                })

                vim.api.nvim_create_autocmd('FileType', {
                    pattern = { '<filetype>' },
                    callback = function() vim.treesitter.start() end,
                })

                vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
                vim.wo[0][0].foldmethod = 'expr'

                vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
            end,
		},
	}
}
