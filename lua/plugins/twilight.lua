-- Configuração do plugin Twilight para destacar o código relevante e escurecer o restante
require("twilight").setup({
  -- Configuração de escurecimento
  dimming = {
    alpha = 0.25, -- Nível de transparência (0 = totalmente escuro, 1 = sem escurecimento)
    color = { "Normal", "#ffffff" }, -- Cor de fundo para o escurecimento
    inactive = false, -- Não escurecer janelas inativas
  },

  -- Número de linhas de contexto a serem mantidas visíveis ao redor do cursor
  context = 1,

  -- Usar Treesitter para determinar o contexto (recomendado para melhor precisão)
  treesitter = false, -- Defina como `true` para habilitar Treesitter

  -- Tipos de blocos a serem expandidos automaticamente
  expand = {
    "function", -- Expandir funções
    "method",   -- Expandir métodos
    "table",    -- Expandir tabelas
    "if_statement", -- Expandir blocos `if`
    "class",    -- Expandir classes
  },

  -- Lista de tipos de arquivo ou buffers a serem excluídos do escurecimento
  exclude = {},
})