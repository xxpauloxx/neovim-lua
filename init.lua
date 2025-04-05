-- Gerenciador de plugins
require("packer_plugins")

-- Lista de plugins a serem carregados
local plugins = {
    "nvim-tree",
    "nvim-web-devicons",
    "lualine",
    "gitsigns",
    "twilight",
    "nvim-cmp",
    "nvim-autopairs",
    "nvim-lspsaga",
    "gotests",
    "treesitter",
    "nvim-scrollbar",
    "conform",
    "comment",
    "codecompanion"
}

-- Carregar plugins dinamicamente
for _, plugin in ipairs(plugins) do
    require("plugins/" .. plugin)
end

-- Configurações principais
require("core/settings")
require("core/keymaps")