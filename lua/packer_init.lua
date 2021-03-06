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
  vim.o.runtimepath = vim.fn.stdpath("data") .. "/site/pack/*/start/*," .. vim.o.runtimepath
end

vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer_init.lua source <afile> | PackerSync
  augroup end
]]

local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

return packer.startup(function(use)
  -- :PackerInstall or :PackerSync
  use "wbthomason/packer.nvim"
  use "stevearc/vim-arduino"
  use "vim-airline/vim-airline"
  use "vim-airline/vim-airline-themes"
  use "preservim/tagbar"
  use "jiangmiao/auto-pairs"
  -- :Run
  use "sbdchd/vim-run"
  use "sheerun/vim-polyglot"
  use "lukas-reineke/indent-blankline.nvim"
  use "lewis6991/gitsigns.nvim"
  use {"neoclide/coc.nvim", branch = "release", as = "coc"}
  -- :Neoformat <lang>
  use "sbdchd/neoformat"
  -- :Ack 'word'
  use "mileszs/ack.vim"
  -- :Far far boo or :Far far boo **/*.ext
  -- :Fardo
  use "brooth/far.vim"
  use({
    "projekt0n/github-nvim-theme",
    config = function()
      require("github-theme").setup({
        theme_style = "dark",
        dark_float = true,
      })
    end
  })
  -- :call doge#install()
  -- :DogeGenerate
  use "kkoomen/vim-doge"
  use "RRethy/vim-illuminate"
  use "editorconfig/editorconfig-vim"
  -- :UnusedImports
  use "akhaku/vim-java-unused-imports"
  -- :SearchTasks
  use "gilsondev/searchtasks.vim"
  use "tpope/vim-fugitive"
  use {
    "folke/twilight.nvim",
    config = function()
      require("twilight").setup {
        dimming = {
          alpha = 0.25,
          color = { "Normal", "#ffffff" },
          inactive = false, 
        },
        context = 1, 
        treesitter = false, 
        expand = {
          "function",
          "method",
          "table",
          "if_statement",
          "class"
        },
        exclude = {},
      }
    end
  }
  -- :CommentToggle
  use {
    "terrortylor/nvim-comment",
    config = function()
      require('nvim_comment').setup()
    end
  }
  use "davidgranstrom/nvim-markdown-preview"

  if packer_bootstrap then
    require("packer").sync()
  end
end)
