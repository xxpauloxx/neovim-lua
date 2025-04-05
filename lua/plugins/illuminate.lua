-- Configuração do plugin Illuminate para destacar referências no buffer
require("illuminate").configure({

  -- Provedores usados para obter referências no buffer, ordenados por prioridade
  providers = {
    "lsp",        -- Usa o LSP para encontrar referências
    "treesitter", -- Usa o Treesitter para análise de sintaxe
    "regex",      -- Usa expressões regulares como fallback
  },

  -- Atraso em milissegundos antes de destacar as referências
  delay = 100,

  -- Sobrescritas específicas por tipo de arquivo
  -- As chaves representam o tipo de arquivo e os valores são tabelas com configurações específicas
  filetype_overrides = {},

  -- Lista de tipos de arquivo a serem ignorados para destaque
  filetypes_denylist = {
    "dirvish",   -- Ignora buffers do plugin Dirvish
    "fugitive",  -- Ignora buffers do plugin Fugitive
  },

  -- Lista de tipos de arquivo permitidos para destaque (sobrescrito por `filetypes_denylist`)
  filetypes_allowlist = {},

  -- Lista de modos a serem ignorados para destaque
  modes_denylist = {},

  -- Lista de modos permitidos para destaque (sobrescrito por `modes_denylist`)
  modes_allowlist = {},

  -- Lista de sintaxes a serem ignoradas para destaque (aplicável apenas ao provedor `regex`)
  providers_regex_syntax_denylist = {},

  -- Lista de sintaxes permitidas para destaque (sobrescrito por `providers_regex_syntax_denylist`)
  providers_regex_syntax_allowlist = {},

  -- Define se o texto sob o cursor deve ser destacado
  under_cursor = true,

  -- Limite de linhas para considerar um arquivo como "grande"
  -- O destaque sob o cursor será desativado quando esse limite for atingido
  large_file_cutoff = nil,

  -- Configurações específicas para arquivos grandes (baseado em `large_file_cutoff`)
  -- Se `nil`, o plugin será desativado para arquivos grandes
  large_file_overrides = nil,
})