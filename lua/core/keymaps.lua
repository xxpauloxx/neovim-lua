local vim = vim

vim.api.nvim_set_keymap("n", "gd", "<Plug>(coc-definition)", { silent = true })
vim.api.nvim_set_keymap("n", "gy", "<Plug>(coc-type-definition)", { silent = true })
vim.api.nvim_set_keymap("n", "gi", "<Plug>(coc-implementation)", { silent = true })
vim.api.nvim_set_keymap("n", "gr", "<Plug>(coc-references)", { silent = true })
vim.api.nvim_set_keymap("n", "fx", "<Plug>(coc-fix-current)", { silent = true })
vim.api.nvim_set_keymap("n", "rf", "<Plug>(coc-refactor)", { silent = true })
vim.api.nvim_set_keymap("n", "rn", "<Plug>(coc-rename)", {})
vim.api.nvim_set_keymap("n", "rm", ":call CocActionAsync('doHover')<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<C-e>", ":CocCommand explorer<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<C-t>", ":TagbarToggle<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<C-c>", ":CommentToggle<CR>", { silent = true })

