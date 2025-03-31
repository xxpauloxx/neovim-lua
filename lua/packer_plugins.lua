local vim = vim
local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  packer_bootstrap = vim.fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
  vim.o.runtimepath = vim.fn.stdpath("data") .. "/site/pack/*/start/*," .. vim.o.runtimepathck
end

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer_plugins.lua source <afile> | PackerSync
  augroup end
]])

local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

return packer.startup(function(use)
  use("wbthomason/packer.nvim")
  use("nvim-tree/nvim-tree.lua")
  use("nvim-tree/nvim-web-devicons")
  use("sheerun/vim-polyglot")
  use("lewis6991/gitsigns.nvim")
  use("sbdchd/vim-run")
  use("preservim/tagbar")
  use("RRethy/vim-illuminate")
  use("folke/twilight.nvim")
  use("kkoomen/vim-doge")
  use("editorconfig/editorconfig-vim")
  use("brooth/far.vim")
  use("mileszs/ack.vim")
  use("neovim/nvim-lspconfig")
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-path")
  use("hrsh7th/cmp-cmdline")
  use("hrsh7th/nvim-cmp")
  use("hrsh7th/cmp-vsnip")
  use("hrsh7th/vim-vsnip")
  use("nvim-lualine/lualine.nvim")
  use("davidgranstrom/nvim-markdown-preview")
  use("akhaku/vim-java-unused-imports")
  use("google/vim-maktaba")
  use("google/vim-codefmt")
  use("nvim-lua/plenary.nvim")
  use("olexsmir/gopher.nvim")
  use("catppuccin/nvim")
  use("windwp/nvim-autopairs")
  use("nvimdev/lspsaga.nvim")
  use("yanskun/gotests.nvim")
  use("folke/trouble.nvim")
  use("antosha417/nvim-lsp-file-operations")
  use("fatih/vim-go")
  use("vim-test/vim-test")
  use("nvim-treesitter/nvim-treesitter")
  use("petertriho/nvim-scrollbar")
  use("maxandron/goplements.nvim")
  use("rafaelsq/nvim-goc.lua")
  use("crusj/hierarchy-tree-go.nvim")
  use("mrcjkb/rustaceanvim")
  use("stevearc/conform.nvim")
  use("numToStr/Comment.nvim")
  use("olimorris/codecompanion.nvim")
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
    "FabijanZulj/blame.nvim",
    config = function()
      require("blame").setup()
    end,
  })

  if packer_bootstrap then
    require("packer").sync()
  end
end)
