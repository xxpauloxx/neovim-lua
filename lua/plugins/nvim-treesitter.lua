require'nvim-treesitter.configs'.setup {
    ensure_installed = { "python", "lua", "go", "gomod", "rust", "java", "javascript", "typescript" },
    sync_install = false,
    auto_install = true,

    ignore_install = {},
    highlight = {
      enable = false,
      additional_vim_regex_highlighting = false,
    },
  }