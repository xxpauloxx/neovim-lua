-- Configuração do plugin Gitsigns para integração com Git
require("gitsigns").setup({
  -- Configuração dos sinais visuais para mudanças no Git
  signs = {
    add          = { text = "┃" }, -- Adição de linhas
    change       = { text = "┃" }, -- Alteração de linhas
    delete       = { text = "▪" }, -- Exclusão de linhas
    topdelete    = { text = "▪" }, -- Exclusão de linhas no topo
    changedelete = { text = "┃" }, -- Alteração e exclusão de linhas
    untracked    = { text = "┃" }, -- Linhas não rastreadas
  },

  -- Configurações gerais
  signcolumn = true,      -- Exibir sinais na coluna de sinais (toggle com `:Gitsigns toggle_signs`)
  numhl = true,           -- Realçar números de linha (toggle com `:Gitsigns toggle_numhl`)
  linehl = true,         -- Realçar linhas inteiras (toggle com `:Gitsigns toggle_linehl`)
  word_diff = false,      -- Mostrar diferenças por palavra (toggle com `:Gitsigns toggle_word_diff`)

  -- Monitoramento do diretório Git
  watch_gitdir = {
    interval = 2000,      -- Intervalo de atualização em milissegundos
    follow_files = true,  -- Seguir arquivos movidos ou renomeados
  },

  -- Configurações de anexação
  auto_attach = true,          -- Anexar automaticamente a novos buffers
  attach_to_untracked = true,  -- Anexar a arquivos não rastreados

  -- Configuração de blame (responsabilidade de linha)
  current_line_blame = true, -- Exibir blame na linha atual (toggle com `:Gitsigns toggle_current_line_blame`)
  current_line_blame_opts = {
    virt_text = true,         -- Exibir texto virtual
    virt_text_pos = "eol",    -- Posição do texto virtual: 'eol' | 'overlay' | 'right_align'
    delay = 300,              -- Atraso antes de exibir o blame
    ignore_whitespace = false,-- Ignorar mudanças apenas de espaços em branco
    virt_text_priority = 100, -- Prioridade do texto virtual
  },
  current_line_blame_formatter = "  <author>, <author_time:%Y-%m-%d> - <summary>", -- Formato do blame

  -- Outras configurações
  sign_priority = 6,          -- Prioridade dos sinais
  update_debounce = 100,      -- Debounce para atualizações em milissegundos
  status_formatter = nil,     -- Usar o formatador padrão para status
  max_file_length = 40000,    -- Desabilitar para arquivos com mais de 40.000 linhas

  -- Configuração da janela de visualização
  preview_config = {
    border = "single",        -- Estilo da borda
    style = "minimal",        -- Estilo minimalista
    relative = "cursor",      -- Relativo ao cursor
    row = 0,                  -- Linha de início
    col = 1,                  -- Coluna de início
  },
})