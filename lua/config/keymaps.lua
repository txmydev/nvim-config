vim.keymap.set({ 'n' }, "<leader>fe", vim.cmd.Ex, { desc = "File explorer" } )
vim.keymap.set({ 'n' }, "<leader>ch", function() vim.fn.setreg('/', ""); end, { desc = "Clear highlighted text" } )
vim.keymap.set("n", "<leader>tN", "<cmd>tabnew<cr>",    { desc = "New tab" })
vim.keymap.set("n", "<leader>tn", "<cmd>tabnext<cr>",   { desc = "Next tab" })
vim.keymap.set("n", "<leader>tc", "<cmd>tabclose<cr>",  { desc = "Close tab" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float,  { desc = "Show diagnostic float" })

