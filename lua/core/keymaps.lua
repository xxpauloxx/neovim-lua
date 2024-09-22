local vim = vim

vim.api.nvim_set_keymap("n", "<C-n>", ":NvimTreeToggle<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<C-d>", ":TagbarToggle<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<C-t>", ":Twilight<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", ":TroubleToggle<CR>", { silent = true })

vim.api.nvim_set_keymap("n", "<C-down>", "<C-down> <C-W><C-J>", { silent = true })
vim.api.nvim_set_keymap("n", "<C-up>", "<C-W><C-K>", { silent = true })
vim.api.nvim_set_keymap("n", "<C-right>", "<C-W><C-L>", { silent = true })
vim.api.nvim_set_keymap("n", "<C-left>", "<C-W><C-H>", { silent = true })

vim.api.nvim_create_user_command("ConformFormat", function(args)
  local range = nil
  if args.count ~= -1 then
    local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
    range = {
      start = { args.line1, 0 },
      ["end"] = { args.line2, end_line:len() },
    }
  end
  require("conform").format({ async = true, lsp_format = "fallback", range = range })
end, { range = true })

