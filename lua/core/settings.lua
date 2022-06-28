local vim = vim

vim.cmd [[set mouse=a]]

vim.b.coc_git_status = false

if vim.fn.executable("ag") then
    vim.g.ackprg = "ag --vimgrep"
end

vim.g.mapleader = " "
vim.g.airline_theme = "minimalist"
vim.g.coc_global_extensions = {
    'coc-cmake',
    'coc-docker',
    'coc-eslint',
    'coc-go',
    'coc-highlight',
    'coc-java',
    'coc-java-lombok',
    'coc-jedi',
    'coc-jest',
    'coc-json',
    'coc-yaml',
    'coc-xml',
    'coc-webpack',
    'coc-vimlsp',
    'coc-vetur',
    'coc-terminal',
    'coc-svelte',
    'coc-sql',
    'coc-prettier',
    'coc-html',
    'coc-css',
    'coc-tsserver',
    'coc-explorer',
    'coc-flutter',
    'coc-htmlhint',
    'coc-html-css-support',
    'coc-clangd',
    'coc-marketplace',
}

vim.o.hidden = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.smarttab = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.termguicolors = true
vim.o.background = "dark"
vim.o.syntax = true

vim.opt.list = true
vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("eol:↴")
vim.opt.ruler = true
vim.opt.encoding = "utf-8"
vim.opt.expandtab = true
vim.opt.termguicolors = true
vim.opt.cursorline = true

vim.wo.colorcolumn = "80"
vim.wo.relativenumber = true
vim.wo.number = true