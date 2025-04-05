-- Configuração do plugin CodeCompanion
require("codecompanion").setup({
    -- Opções gerais
    opts = {
        language = "Portuguese", -- Idioma usado pelo LLM
    },

    -- Estratégias de interação
    strategies = {
        chat = {
            adapter = "copilot", -- Adaptador para o modo de chat
        },
        inline = {
            adapter = "copilot", -- Adaptador para sugestões inline
            keymaps = {
                accept_change = {
                    modes = { n = "ga" }, -- Atalho para aceitar mudanças
                    description = "Accept the suggested change",
                },
                reject_change = {
                    modes = { n = "gr" }, -- Atalho para rejeitar mudanças
                    description = "Reject the suggested change",
                },
            },
        },
    },

    -- Configurações de exibição
    display = {
        chat = {
            -- Ícones personalizados para o buffer de chat
            icons = {
                pinned_buffer = " ",
                watched_buffer = "👀 ",
            },
            -- Configurações da janela de chat
            window = {
                layout = "vertical", -- Layout: float|vertical|horizontal|buffer
                position = "right",  -- Posição: left|right|top|bottom
                border = "single",   -- Estilo da borda
                height = 0.8,        -- Altura relativa
                width = 0.45,        -- Largura relativa
                relative = "editor", -- Relativo ao editor
                full_height = true,  -- Usa altura total (false usa vsplit)
                opts = {
                    breakindent = true, -- Indentação visual
                    cursorcolumn = false,
                    cursorline = false,
                    foldcolumn = "0",
                    linebreak = true,
                    list = false,
                    numberwidth = 1,
                    signcolumn = "no",
                    spell = false,
                    wrap = true, -- Quebra de linha habilitada
                },
            },
        },
        inline = {
            layout = "vertical", -- Layout para sugestões inline
        },
        action_palette = {
            width = 95,                     -- Largura da paleta de ações
            height = 10,                    -- Altura da paleta de ações
            prompt = "Prompt ",             -- Texto do prompt
            provider = "telescope",         -- Provedor: default|telescope|mini_pick
            opts = {
                show_default_actions = true,    -- Mostrar ações padrão
                show_default_prompt_library = true, -- Mostrar biblioteca de prompts padrão
            },
        },
    },
})