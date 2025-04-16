-- Configuração do plugin nvim-tree para gerenciar o explorador de arquivos
local vim = vim

require("nvim-tree").setup({
  -- Configuração de filtros
  filters = {
    dotfiles = false, -- Não exibir arquivos ocultos (dotfiles)
    git_ignored = true, -- Ocultar arquivos ignorados pelo Git
    exclude = { vim.fn.stdpath("config") .. "/lua/custom" }, -- Excluir diretórios específicos
  },

  -- Configurações gerais
  disable_netrw = true, -- Desabilitar o netrw (explorador de arquivos padrão do Vim)
  hijack_netrw = true, -- Substituir o netrw pelo nvim-tree
  hijack_cursor = true, -- Centralizar o cursor ao navegar no nvim-tree
  hijack_unnamed_buffer_when_opening = false, -- Não sobrescrever buffers não nomeados ao abrir o nvim-tree
  sync_root_with_cwd = true, -- Sincronizar o diretório raiz com o diretório atual

  -- Atualização do arquivo focado
  update_focused_file = {
    enable = true, -- Atualizar o foco no arquivo atual
    update_root = false, -- Não atualizar o diretório raiz automaticamente
  },

  -- Configuração de diagnósticos
  diagnostics = {
    enable = true, -- Habilitar exibição de diagnósticos
    show_on_dirs = true, -- Mostrar diagnósticos em diretórios
    show_on_open_dirs = true, -- Mostrar diagnósticos em diretórios abertos
    icons = {
      hint = "▪", -- Ícone para dicas
      info = "▪", -- Ícone para informações
      warning = "▪", -- Ícone para avisos
      error = "▪", -- Ícone para erros
    },
  },

  -- Configuração da visualização
  view = {
    adaptive_size = false, -- Não ajustar automaticamente o tamanho da janela
    side = "left", -- Exibir o nvim-tree no lado esquerdo
    width = 25, -- Largura da janela
    preserve_window_proportions = true, -- Preservar proporções da janela
  },

  -- Configuração de integração com Git
  git = {
    enable = true, -- Habilitar integração com Git
    ignore = true, -- Ignorar arquivos rastreados pelo Git
  },

  -- Configuração de observadores do sistema de arquivos
  filesystem_watchers = {
    enable = true, -- Habilitar observadores para mudanças no sistema de arquivos
  },

  -- Configuração de ações
  actions = {
    open_file = {
      resize_window = false, -- Não redimensionar a janela ao abrir um arquivo
    },
  },

  -- Configuração do renderizador
  renderer = {
    root_folder_label = false, -- Não exibir rótulo para a pasta raiz
    highlight_git = true, -- Destacar alterações do Git
    highlight_opened_files = "none", -- Não destacar arquivos abertos

    -- Arquivos especiais a serem destacados
    special_files = {
      "Makefile",
      "pyproject.toml",
      "go.mod",
      "go.sum",
      "requirements.txt",
      "Dockerfile",
    },

    -- Configuração de marcadores de indentação
    indent_markers = {
      enable = true, -- Habilitar marcadores de indentação
    },

    -- Configuração de ícones
    icons = {
      show = {
        file = false, -- Não exibir ícones para arquivos
        folder = false, -- Não exibir ícones para pastas
        folder_arrow = true, -- Exibir setas para pastas
        git = false, -- Não exibir ícones para Git
      },
      glyphs = {
        default = "󰈚", -- Ícone padrão para arquivos
        symlink = "", -- Ícone para links simbólicos
        folder = {
          default = "", -- Ícone para pastas
          empty = "", -- Ícone para pastas vazias
          empty_open = "", -- Ícone para pastas vazias abertas
          open = "", -- Ícone para pastas abertas
          symlink = "", -- Ícone para links simbólicos de pastas
          symlink_open = "", -- Ícone para links simbólicos de pastas abertas
          arrow_open = "", -- Ícone para setas abertas
          arrow_closed = "", -- Ícone para setas fechadas
        },
        git = {
          unstaged = "▪", -- Ícone para alterações não preparadas
          staged = "▪", -- Ícone para alterações preparadas
          unmerged = "▪", -- Ícone para conflitos não resolvidos
          renamed = "▪", -- Ícone para arquivos renomeados
          untracked = "▪", -- Ícone para arquivos não rastreados
          deleted = "▪", -- Ícone para arquivos excluídos
          ignored = "▪", -- Ícone para arquivos ignorados
        },
      },
    },
  },
})