return {
        -- {
        --     "ellisonleao/gruvbox.nvim",
        --     priority = 1000 ,
        --     config = function()
        --         vim.cmd("colorscheme gruvbox")
        --     end,
        --     opts = {}
        -- }
        --
   "rose-pine/neovim",
	name = "rose-pine",
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
