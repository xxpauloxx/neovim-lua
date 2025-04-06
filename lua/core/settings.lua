local vim = vim

if vim.fn.executable("ag") then
	vim.g.ackprg = "ag --vimgrep"
end

vim.g.mapleader = " "

vim.o.hidden = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.smarttab = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.termguicolors = true
vim.o.background = "dark"
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
vim.opt.mouse = "a"          -- Habilita o uso do mouse
vim.opt.syntax = "on"        -- Ativa a sintaxe
vim.opt.wrap = false         -- Desativa quebra de linha
vim.opt.termguicolors = true -- Habilita cores verdadeiras no terminal

vim.wo.colorcolumn = "80"
vim.wo.relativenumber = false
vim.wo.number = true

vim.cmd.colorscheme("catppuccin-mocha") -- Define o esquema de cores

vim.diagnostic.config({
	virtual_text = {
		prefix = '■', -- Could be '●', '▎', 'x'
		spacing = 4,
	},
	signs = {
		text = { [1] = '•', ['WARN'] = '•', ['HINT'] = '•', ['INFO'] = '•' },
	},
	underline = true,
	severity_sort = true,
})
