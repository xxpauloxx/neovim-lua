-- Configuração do plugin nvim-cmp para autocompletar
local cmp = require("cmp")
local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Função para configurar mapeamentos de teclas para o LSP
local function setup_lsp_keymaps(bufnr)
  local bufmap = function(mode, lhs, rhs, desc)
    local opts = { buffer = bufnr, desc = desc }
    vim.keymap.set(mode, lhs, rhs, opts)
  end

  bufmap("n", "K", vim.lsp.buf.hover, "Exibir informações do símbolo")
  bufmap("n", "gd", vim.lsp.buf.definition, "Ir para definição")
  bufmap("n", "gD", vim.lsp.buf.declaration, "Ir para declaração")
  bufmap("n", "gi", vim.lsp.buf.implementation, "Listar implementações")
  bufmap("n", "go", vim.lsp.buf.type_definition, "Ir para definição de tipo")
  bufmap("n", "gr", vim.lsp.buf.references, "Listar referências")
  bufmap("n", "gs", vim.lsp.buf.signature_help, "Exibir assinatura da função")
  bufmap("n", "rn", vim.lsp.buf.rename, "Renomear símbolo")
  bufmap("n", "ca", vim.lsp.buf.code_action, "Ações de código")
  bufmap("n", "gl", vim.diagnostic.open_float, "Exibir diagnósticos")
  bufmap("n", "[d", vim.diagnostic.goto_prev, "Ir para diagnóstico anterior")
  bufmap("n", "]d", vim.diagnostic.goto_next, "Ir para próximo diagnóstico")
end

-- Configuração do nvim-cmp
cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.abort(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "vsnip" },
  }, {
    { name = "buffer" },
  }),
})

-- Configuração para tipos de arquivo específicos
cmp.setup.filetype("gitcommit", {
  sources = cmp.config.sources({
    { name = "git" },
  }, {
    { name = "buffer" },
  }),
})

-- Configuração para autocompletar no modo de busca ("/" e "?")
cmp.setup.cmdline({ "/", "?" }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = "buffer" },
  },
})

-- Configuração para autocompletar no modo de comando (":")
cmp.setup.cmdline(":", {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = "path" },
  }, {
    { name = "cmdline" },
  }),
})

-- Lista de servidores de linguagem
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
  "dockerls",       -- Docker
  "dartls",         -- Dart
  "eslint",         -- JavaScript/TypeScript Linting
  "graphql",        -- GraphQL
  "html",           -- HTML
  "ts_ls",       -- TypeScript
  "bashls",         -- Bash
  "yamlls",         -- YAML
  "marksman",       -- Markdown
  "terraformls",    -- Terraform
  "clangd",         -- C/C++ (alternativa ao ccls)
}

-- Configuração de cada servidor de linguagem
for _, lsp in ipairs(language_servers) do
  lspconfig[lsp].setup({
    capabilities = capabilities,
    on_attach = function(_, bufnr)
      setup_lsp_keymaps(bufnr)
    end,
  })
end

-- Configuração adicional para o servidor Lua (lua_ls)
lspconfig.lua_ls.setup({
  capabilities = capabilities,
  on_attach = function(_, bufnr)
    setup_lsp_keymaps(bufnr)
  end,
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT",
      },
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
      },
      telemetry = {
        enable = false,
      },
    },
  },
})