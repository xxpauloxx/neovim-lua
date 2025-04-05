-- Configuração do plugin nvim-cmp para autocompletar
local vim = vim
local cmp = require("cmp")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Configuração principal do nvim-cmp
cmp.setup({
  snippet = {
    -- Configuração para expandir snippets usando o plugin VSnip
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  window = {
    -- Configuração de janelas com bordas para autocompletar e documentação
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    -- Mapeamentos para navegação e controle do menu de autocompletar
    ["<C-b>"] = cmp.mapping.scroll_docs(-4), -- Scroll para cima na documentação
    ["<C-f>"] = cmp.mapping.scroll_docs(4),  -- Scroll para baixo na documentação
    ["<C-Space>"] = cmp.mapping.complete(),  -- Abrir menu de autocompletar
    ["<C-e>"] = cmp.mapping.abort(),         -- Fechar menu de autocompletar
    ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Confirmar seleção
  }),
  sources = cmp.config.sources({
    { name = "nvim_lsp" }, -- Fonte: LSP
    { name = "vsnip" },    -- Fonte: Snippets
  }, {
    { name = "buffer" },   -- Fonte: Buffer atual
  }),
})

-- Configuração específica para o tipo de arquivo "gitcommit"
cmp.setup.filetype("gitcommit", {
  sources = cmp.config.sources({
    { name = "git" },      -- Fonte: Git
  }, {
    { name = "buffer" },   -- Fonte: Buffer atual
  }),
})

-- Configuração para autocompletar no modo de busca ("/" e "?")
cmp.setup.cmdline({ "/", "?" }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = "buffer" },   -- Fonte: Buffer atual
  },
})

-- Configuração para autocompletar no modo de comando (":")
cmp.setup.cmdline(":", {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = "path" },     -- Fonte: Caminhos de arquivos
  }, {
    { name = "cmdline" },  -- Fonte: Comandos
  }),
  matching = { disallow_symbol_nonprefix_matching = false }, -- Permitir correspondência parcial
})

-- Configuração de ações do LSP ao anexar a um buffer
vim.api.nvim_create_autocmd("LspAttach", {
  desc = "LSP actions",
  callback = function()
    local bufmap = function(mode, lhs, rhs)
      local opts = { buffer = true }
      vim.keymap.set(mode, lhs, rhs, opts)
    end

    -- Mapeamentos para ações do LSP
    bufmap("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>")             -- Exibir informações do símbolo
    bufmap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>")       -- Ir para definição
    bufmap("n", "GD", "<cmd>lua vim.lsp.buf.declaration()<cr>")      -- Ir para declaração
    bufmap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>")   -- Listar implementações
    bufmap("n", "go", "<cmd>lua vim.lsp.buf.type_definition()<cr>")  -- Ir para definição de tipo
    bufmap("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>")       -- Listar referências
    bufmap("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>")   -- Exibir assinatura da função
    bufmap("n", "rn", "<cmd>lua vim.lsp.buf.rename()<cr>")           -- Renomear símbolo
    bufmap("n", "ca", "<cmd>lua vim.lsp.buf.code_action()<cr>")      -- Ações de código
    bufmap("n", "gl", "<cmd>lua vim.diagnostic.open_float()<cr>")    -- Exibir diagnósticos
    bufmap("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<cr>")     -- Ir para diagnóstico anterior
    bufmap("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<cr>")     -- Ir para próximo diagnóstico
  end,
})

-- Configuração dos servidores de linguagem suportados
local language_servers = {
  "pyright",        -- Python
  "gopls",          -- Go
  "lua_ls",         -- Lua
  "jsonls",         -- JSON
  "rust_analyzer",  -- Rust
  "jdtls",          -- Java
  "ccls",           -- C/C++
  "cssls",          -- CSS
  "cmake",          -- CMake
  "css_variables",  -- CSS Variables
  "dockerls",       -- Docker
  "dartls",         -- Dart
  "eslint",         -- JavaScript/TypeScript Linting
  "flow",           -- Flow
  "graphql",        -- GraphQL
  "html",           -- HTML
  "htmx",           -- HTMX
  "helm_ls",        -- Helm
  "sqls",           -- SQL
  "starlark_rust",  -- Starlark
  "ts_ls",          -- TypeScript
}

-- Configuração de cada servidor de linguagem
for _, lsp in ipairs(language_servers) do
  require("lspconfig")[lsp].setup({
    capabilities = capabilities, -- Habilitar recursos adicionais do LSP
  })
end