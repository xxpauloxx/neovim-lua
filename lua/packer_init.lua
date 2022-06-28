local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path
  })
  vim.o.runtimepath = vim.fn.stdpath('data') .. '/site/pack/*/start/*,' .. vim.o.runtimepath
end

vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer_init.lua source <afile> | PackerSync
  augroup end
]]

local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end

return packer.startup(function()

  use 'wbthomason/packer.nvim'
  use "preservim/tagbar"
  use "jiangmiao/auto-pairs"
  use "ayu-theme/ayu-vim"
  use "sbdchd/vim-run"
  use "sheerun/vim-polyglot"
  use "lukas-reineke/indent-blankline.nvim"
  use "vim-airline/vim-airline"
  use "vim-airline/vim-airline-themes"
  use {
    "lewis6991/gitsigns.nvim",
    config = function()
      require('gitsigns').setup()
    end
  }
  use {"neoclide/coc.nvim", branch = "release", as = "coc"}
  use "arzg/vim-colors-xcode"
  use "sbdchd/neoformat"
  use "mileszs/ack.vim"

  if packer_bootstrap then
    require("packer").sync()
  end

end)
