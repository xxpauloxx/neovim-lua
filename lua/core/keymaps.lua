local vim = vim

vim.api.nvim_set_keymap("n", "<C-n>", ":NvimTreeToggle<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<C-d>", ":TagbarToggle<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<C-t>", ":Twilight<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<C-s>", ":Lspsaga", { silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", ":TroubleToggle<CR>", { silent = true })

vim.api.nvim_set_keymap("n", "<C-down>", "<C-down> <C-W><C-J>", { silent = true })
vim.api.nvim_set_keymap("n", "<C-up>", "<C-W><C-K>", { silent = true })
vim.api.nvim_set_keymap("n", "<C-right>", "<C-W><C-L>", { silent = true })
vim.api.nvim_set_keymap("n", "<C-left>", "<C-W><C-H>", { silent = true })

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
    callback = function()
      require("lint").try_lint()
    end,
})