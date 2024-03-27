local vim = vim

vim.api.nvim_set_keymap("n", "<C-n>", ":NvimTreeToggle<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<C-d>", ":TagbarToggle<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<C-t>", ":Twilight<CR>", { silent = true })

vim.api.nvim_set_keymap("n", "<C-down>", "<C-down> <C-W><C-J>", { silent = true })
vim.api.nvim_set_keymap("n", "<C-up>", "<C-W><C-K>", { silent = true })
vim.api.nvim_set_keymap("n", "<C-right>", "<C-W><C-L>", { silent = true })
vim.api.nvim_set_keymap("n", "<C-left>", "<C-W><C-H>", { silent = true })

