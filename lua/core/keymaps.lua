local vim = vim

vim.api.nvim_set_keymap("n", "gd", "<Plug>(coc-definition)", { silent = true })
vim.api.nvim_set_keymap("n", "gy", "<Plug>(coc-type-definition)", { silent = true })
vim.api.nvim_set_keymap("n", "gi", "<Plug>(coc-implementation)", { silent = true })
vim.api.nvim_set_keymap("n", "gr", "<Plug>(coc-references)", { silent = true })
vim.api.nvim_set_keymap("n", "fx", "<Plug>(coc-fix-current)", { silent = true })
vim.api.nvim_set_keymap("n", "rf", "<Plug>(coc-refactor)", { silent = true })
vim.api.nvim_set_keymap("n", "rn", "<Plug>(coc-rename)", {})
vim.api.nvim_set_keymap("n", "rm", ":call CocActionAsync('doHover')<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<C-n>", ":NvimTreeToggle<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<C-d>", ":TagbarToggle<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<C-t>", ":Twilight<CR>", { silent = true })
vim.api.nvim_set_keymap("v", "<C-c>", "gc", { silent = true })

vim.api.nvim_set_keymap("n", "<C-down>", "<C-down> <C-W><C-J>", { silent = true })
vim.api.nvim_set_keymap("n", "<C-up>", "<C-W><C-K>", { silent = true })
vim.api.nvim_set_keymap("n", "<C-right>", "<C-W><C-L>", { silent = true })
vim.api.nvim_set_keymap("n", "<C-left>", "<C-W><C-H>", { silent = true })

