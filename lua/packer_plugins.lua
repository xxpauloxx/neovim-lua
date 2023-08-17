local vim = vim
local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  packer_bootstrap = vim.fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path
  })
  vim.o.runtimepath = vim.fn.stdpath("data") .. "/site/pack/*/start/*," .. vim.o.runtimepathck
end

vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer_plugins.lua source <afile> | PackerSync
  augroup end
]]

local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

return packer.startup(function(use)
  use "wbthomason/packer.nvim"

  use "nvim-tree/nvim-tree.lua"
  use "Shatur/neovim-ayu"
  use "nvim-tree/nvim-web-devicons"
  use "sheerun/vim-polyglot"
  use "lukas-reineke/indent-blankline.nvim"
  use "lewis6991/gitsigns.nvim"
  use "sbdchd/vim-run"
  use "preservim/tagbar"
  use "RRethy/vim-illuminate"
  use "folke/twilight.nvim"
  use "kkoomen/vim-doge"
  use "editorconfig/editorconfig-vim"
  use "brooth/far.vim"
  use "mileszs/ack.vim"
  use "sbdchd/neoformat"
  use {"neoclide/coc.nvim", branch = "release", as = "coc"}
  use "nvim-lualine/lualine.nvim"
  use "romgrk/barbar.nvim"
  use "davidgranstrom/nvim-markdown-preview"

  -- :UnusedImports
  use "akhaku/vim-java-unused-imports"

  if packer_bootstrap then
    require("packer").sync()
  end
end)
