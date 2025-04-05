-- Configuração do plugin nvim-autopairs para fechamento automático de pares
require("nvim-autopairs").setup({
  -- Desabilitar o plugin em certos modos
  disable_in_macro = true,         -- Desabilitar durante a execução de macros
  disable_in_visualblock = false,  -- Permitir no modo visual block
  disable_in_replace_mode = true,  -- Desabilitar no modo replace

  -- Configurações gerais
  enable_moveright = true,         -- Permitir mover para a direita após inserir um par
  enable_afterquote = true,        -- Inserir pares após aspas
  enable_check_bracket_line = true,-- Verificar se há pares na mesma linha
  enable_bracket_in_quote = true,  -- Permitir pares dentro de aspas
  enable_abbr = false,             -- Desabilitar abreviações automáticas
  break_undo = true,               -- Quebrar ações de desfazer em múltiplos passos

  -- Integração com Treesitter
  check_ts = false,                -- Desabilitar verificação com Treesitter

  -- Mapeamentos
  map_cr = true,                   -- Mapear <CR> para inserir pares automaticamente
  map_bs = true,                   -- Mapear <BS> para apagar pares automaticamente
  map_c_h = false,                 -- Não mapear <C-h> para apagar pares
  map_c_w = false,                 -- Não mapear <C-w> para apagar palavras
})