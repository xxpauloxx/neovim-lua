-- Configuração do plugin nvim-treesitter para análise e realce de sintaxe avançado
require("nvim-treesitter.configs").setup({
  -- Linguagens a serem instaladas
  ensure_installed = {
    "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline",
    "python", "ruby", "javascript", "arduino", "awk", "c_sharp", "cmake",
    "clojure", "asm", "cpp", "css", "csv", "dart", "dockerfile", "diff",
    "editorconfig", "erlang", "gleam", "go", "gomod", "helm", "haskell",
    "html", "htmldjango", "java", "json", "json5", "kotlin", "nasm",
    "ocaml", "ocaml_interface", "proto", "regex", "rust", "sql", "svelte",
    "toml", "typescript", "yaml", "vue", "xml",
  },

  -- Instalar parsers de forma síncrona (aplicado apenas ao `ensure_installed`)
  sync_install = false,

  -- Instalar parsers automaticamente ao abrir um buffer
  -- Recomendação: defina como `false` se você não tiver o CLI do `tree-sitter` instalado localmente
  auto_install = true,

  -- Lista de parsers a serem ignorados durante a instalação
  ignore_install = {},

  -- Configuração de realce de sintaxe
  highlight = {
    enable = true, -- Habilitar realce de sintaxe com Tree-sitter

    -- Lista de linguagens para as quais o realce será desabilitado
    disable = {},

    -- Executar `:h syntax` e Tree-sitter ao mesmo tempo
    -- Defina como `true` se depender do 'syntax' padrão (pode causar lentidão ou realces duplicados)
    additional_vim_regex_highlighting = false,
  },
})