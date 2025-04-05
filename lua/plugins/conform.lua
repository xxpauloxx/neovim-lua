-- Configuração do plugin Conform para formatação de código
require("conform").setup({
  -- Configuração de formatadores por tipo de arquivo
  formatters_by_ft = {
    -- Para arquivos Lua, utiliza o formatador "stylua"
    lua = { "stylua" },

    -- Para arquivos Python, executa os formatadores "isort" e "black" em sequência
    python = { "isort", "black" },

    -- Para arquivos Rust, utiliza "rustfmt" e um fallback para o formatador do LSP
    rust = { "rustfmt", lsp_format = "fallback" },

    -- Para arquivos JavaScript, tenta "prettierd" e "prettier", parando após o primeiro disponível
    javascript = { "prettierd", "prettier", stop_after_first = true },
  },
})