-- Configuração do plugin nvim-scrollbar para exibir uma barra de rolagem personalizada
require("scrollbar").setup({
  -- Configurações gerais
  show = true, -- Exibir a barra de rolagem
  show_in_active_only = false, -- Mostrar apenas em janelas ativas
  set_highlights = true, -- Configurar destaques automaticamente
  folds = 1000, -- Desabilitar em buffers com mais de 1000 linhas dobradas
  max_lines = false, -- Desabilitar em buffers com mais de um número específico de linhas (false = sem limite)
  hide_if_all_visible = false, -- Ocultar a barra se todas as linhas estiverem visíveis
  throttle_ms = 100, -- Intervalo de atualização em milissegundos

  -- Configuração do "handle" (indicador principal da barra)
  handle = {
    text = " ", -- Texto exibido no handle
    blend = 30, -- Transparência (0 = opaco, 100 = totalmente transparente)
    color = nil, -- Cor personalizada (opcional)
    color_nr = nil, -- Cor para terminais cterm (opcional)
    highlight = "CursorColumn", -- Destaque aplicado ao handle
    hide_if_all_visible = true, -- Ocultar o handle se todas as linhas estiverem visíveis
  },

  -- Configuração de marcas (marcadores na barra de rolagem)
  marks = {
    Cursor = {
      text = "▪", -- Indicador para a posição do cursor
      priority = 0, -- Prioridade mais baixa
      highlight = "Normal", -- Destaque aplicado
    },
    Search = {
      text = { "▪", "▪" }, -- Indicador para resultados de busca
      priority = 1,
      highlight = "Search",
    },
    Error = {
      text = { "▪", "▪" }, -- Indicador para erros
      priority = 2,
      highlight = "DiagnosticVirtualTextError",
    },
    Warn = {
      text = { "▪", "▪" }, -- Indicador para avisos
      priority = 3,
      highlight = "DiagnosticVirtualTextWarn",
    },
    Info = {
      text = { "▪", "▪" }, -- Indicador para informações
      priority = 4,
      highlight = "DiagnosticVirtualTextInfo",
    },
    Hint = {
      text = { "▪", "▪" }, -- Indicador para dicas
      priority = 5,
      highlight = "DiagnosticVirtualTextHint",
    },
    Misc = {
      text = { "▪", "▪" }, -- Indicador para outros tipos de mensagens
      priority = 6,
      highlight = "Normal",
    },
    GitAdd = {
      text = "▪", -- Indicador para adições no Git
      priority = 7,
      highlight = "GitSignsAdd",
    },
    GitChange = {
      text = "▪", -- Indicador para alterações no Git
      priority = 7,
      highlight = "GitSignsChange",
    },
    GitDelete = {
      text = "▪", -- Indicador para exclusões no Git
      priority = 7,
      highlight = "GitSignsDelete",
    },
  },

  -- Buffers e tipos de arquivo excluídos
  excluded_buftypes = {
    "terminal", -- Excluir buffers do tipo terminal
  },
  excluded_filetypes = {
    "cmp_docs", -- Excluir buffers de documentação do cmp
    "cmp_menu", -- Excluir menus do cmp
    "noice", -- Excluir buffers do plugin Noice
    "prompt", -- Excluir buffers de prompt
    "TelescopePrompt", -- Excluir buffers do Telescope
  },

  -- Configuração de eventos automáticos
  autocmd = {
    render = {
      "BufWinEnter", -- Renderizar ao entrar em uma janela
      "TabEnter", -- Renderizar ao entrar em uma aba
      "TermEnter", -- Renderizar ao entrar em um terminal
      "WinEnter", -- Renderizar ao entrar em uma janela
      "CmdwinLeave", -- Renderizar ao sair do modo de comando
      "TextChanged", -- Renderizar ao alterar texto
      "VimResized", -- Renderizar ao redimensionar a janela
      "WinScrolled", -- Renderizar ao rolar a janela
    },
    clear = {
      "BufWinLeave", -- Limpar ao sair de uma janela
      "TabLeave", -- Limpar ao sair de uma aba
      "TermLeave", -- Limpar ao sair de um terminal
      "WinLeave", -- Limpar ao sair de uma janela
    },
  },

  -- Configuração de manipuladores
  handlers = {
    cursor = true, -- Exibir posição do cursor
    diagnostic = true, -- Exibir diagnósticos
    gitsigns = true, -- Exibir alterações do Git (requer o plugin gitsigns)
    handle = true, -- Exibir o handle principal
    search = false, -- Exibir resultados de busca (requer o plugin hlslens)
    ale = false, -- Exibir erros do ALE (requer o plugin ALE)
  },
})