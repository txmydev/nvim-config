return {
  {
    "rose-pine/neovim",
    name = "rose-pine",

    config = function()
      require("rose-pine").setup({
        styles = {
          bold = true,
          italic = false,
          transparent = false,
        },
      })

      vim.cmd("colorscheme rose-pine")
    end,
  },
}
