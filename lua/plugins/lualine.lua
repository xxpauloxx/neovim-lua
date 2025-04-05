-- Configuração do plugin Lualine para a barra de status
require("lualine").setup({
  options = {
    icons_enabled = true, -- Habilitar ícones na barra de status
    theme = "catppuccin-mocha", -- Tema da barra de status
    component_separators = { left = "", right = "" }, -- Separadores entre componentes
    section_separators = { left = "", right = "" }, -- Separadores entre seções
    disabled_filetypes = {
      statusline = { "nvim-tree", "NvimTree", "NvimTree_1" }, -- Desabilitar Lualine em certos tipos de arquivo
      winbar = {}, -- Tipos de arquivo para desabilitar na winbar (vazia por padrão)
    },
    ignore_focus = {}, -- Buffers ignorados para atualização da barra
    always_divide_middle = true, -- Dividir a barra ao meio, mesmo com poucos componentes
    globalstatus = false, -- Usar uma barra de status global (desabilitado por padrão)
    refresh = {
      statusline = 1000, -- Atualizar a barra de status a cada 1000ms
      tabline = 1000,    -- Atualizar a tabline a cada 1000ms
      winbar = 1000,     -- Atualizar a winbar a cada 1000ms
    },
  },
  sections = {
    -- Configuração das seções ativas da barra de status
    lualine_a = { "mode" }, -- Exibe o modo atual (normal, insert, etc.)
    lualine_b = { "branch", "diff", "diagnostics" }, -- Informações de Git e diagnósticos
    lualine_c = { "filename" }, -- Nome do arquivo atual
    lualine_x = { "encoding", "fileformat", "filetype" }, -- Codificação, formato e tipo de arquivo
    lualine_y = { "progress" }, -- Progresso no arquivo (ex.: linha atual/total)
    lualine_z = { "location" }, -- Localização do cursor (linha e coluna)
  },
  inactive_sections = {
    -- Configuração das seções inativas (quando o buffer não está em foco)
    lualine_a = {}, -- Seção vazia
    lualine_b = {}, -- Seção vazia
    lualine_c = { "filename" }, -- Exibe apenas o nome do arquivo
    lualine_x = { "location" }, -- Exibe apenas a localização do cursor
    lualine_y = {}, -- Seção vazia
    lualine_z = {}, -- Seção vazia
  },
  tabline = {}, -- Configuração da tabline (vazia por padrão)
  winbar = {}, -- Configuração da winbar (vazia por padrão)
  inactive_winbar = {}, -- Configuração da winbar inativa (vazia por padrão)
  extensions = {}, -- Extensões adicionais (vazia por padrão)
})