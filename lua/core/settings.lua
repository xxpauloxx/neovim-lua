local vim = vim

if vim.fn.executable("ag") then
    vim.g.ackprg = "ag --vimgrep"
end

vim.g.mapleader = " "
vim.g.barbar_auto_setup = false -- disable auto-setup
vim.g.coc_global_extensions = {
    "coc-cmake",
    "coc-docker",
    "coc-eslint",
    "coc-go",
    "coc-highlight",
    "coc-java",
    "coc-java-lombok",
    "coc-pyright",
    "coc-jest",
    "coc-json",
    "coc-yaml",
    "coc-xml",
    "coc-lua",
    "coc-webpack",
    "coc-htmldjango",
    "coc-format-json",
    "coc-vetur",
    "coc-svelte",
    "coc-sql",
    "coc-prettier",
    "coc-html",
    "coc-css",
    "coc-tsserver",
    "coc-flutter",
    "coc-htmlhint",
    "coc-html-css-support",
    "coc-clangd",
    "coc-marketplace",
    "coc-explorer",
    "coc-rust-analyzer",
    "coc-pairs",
    "coc-diagnostic"
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
vim.o.expandtab = true

vim.opt.list = true
vim.opt.listchars:append("space:.")
vim.opt.listchars:append("eol:↴")
vim.opt.listchars:append("tab:→→")
vim.opt.listchars:append("trail:.")
vim.opt.ruler = true
vim.opt.encoding = "utf-8"
vim.opt.expandtab = true
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.autoindent = true
vim.opt.smarttab = true
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.wo.colorcolumn = "80"
vim.wo.relativenumber = false
vim.wo.number = true

vim.cmd [[set mouse=a]]
vim.cmd [[syntax on]]
vim.cmd [[set nowrap]]
vim.cmd [[inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"]]
vim.cmd [[set termguicolors]]
vim.cmd [[colorscheme catppuccin-macchiato]]