-- Configuração do plugin nvim-web-devicons para exibir ícones personalizados
require("nvim-web-devicons").setup({
  -- Sobrescrever ícones padrão com configurações personalizadas
  override = {
    zsh = {
      icon = "", -- Ícone para arquivos Zsh
      color = "#428850", -- Cor do ícone
      cterm_color = "65", -- Cor para terminais cterm
      name = "Zsh", -- Nome do ícone
    },
  },

  -- Habilitar cores diferentes para cada ícone (padrão: true)
  color_icons = true,

  -- Habilitar ícones padrão globalmente (padrão: false)
  default = true,

  -- Habilitar seleção "estrita" de ícones (padrão: false)
  -- Ícones serão buscados primeiro pelo nome do arquivo e, se não encontrados, pela extensão
  strict = true,

  -- Sobrescrever ícones com base no nome do arquivo (requer `strict = true`)
  override_by_filename = {
    [".gitignore"] = {
      icon = "", -- Ícone para arquivos .gitignore
      color = "#f1502f", -- Cor do ícone
      name = "Gitignore", -- Nome do ícone
    },
  },

  -- Sobrescrever ícones com base na extensão do arquivo (requer `strict = true`)
  override_by_extension = {
    ["log"] = {
      icon = "", -- Ícone para arquivos de log
      color = "#81e043", -- Cor do ícone
      name = "Log", -- Nome do ícone
    },
  },
})