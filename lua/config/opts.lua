vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
-- vim.schedule(function()
vim.opt.clipboard = "unnamedplus"
-- end)

if os.getenv("WAYLAND_DISPLAY") then
    vim.g.clipboard = {
        name = "wayland",
        copy  = { ["+"] = "wl-copy", ["*"] = "wl-copy" },
        paste = { ["+"] = "wl-paste", ["*"] = "wl-paste" },
        cache_enabled = 0,
    }
elseif os.getenv("DISPLAY") then
    vim.g.clipboard = {
        name = "x11",
        copy  = { ["+"] = "xclip -selection clipboard", ["*"] = "xclip -selection primary" },
        paste = { ["+"] = "xclip -selection clipboard -o", ["*"] = "xclip -selection primary -o" },
        cache_enabled = 0,
    }
end

vim.api.nvim_create_autocmd({ "BufEnter", "FocusGained", "InsertLeave" }, {
  callback = function()
    if vim.bo.buftype == "" then  -- only real files, not terminals/popups
      vim.wo.relativenumber = true
    end
  end,
})

vim.api.nvim_create_autocmd({ "BufLeave", "FocusLost", "InsertEnter" }, {
  callback = function()
    vim.wo.relativenumber = false
  end,
})
