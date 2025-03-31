require("codecompanion").setup({
    opts = {
        language = "Portuguese", -- Language used for the LLM
    },
    strategies = {
        chat = {
            adapter = "copilot",
        },
        inline = {
            adapter = "copilot",
            keymaps = {
                accept_change = {
                    modes = { n = "ga" },
                    description = "Accept the suggested change",
                },
                reject_change = {
                    modes = { n = "gr" },
                    description = "Reject the suggested change",
                },
            },
        },
    },
    display = {
        chat = {
            -- Change the default icons
            icons = {
                pinned_buffer = " ",
                watched_buffer = "👀 ",
            },
            -- Options to customize the UI of the chat buffer
            window = {
                layout = "vertical", -- float|vertical|horizontal|buffer
                position = "right",    -- left|right|top|bottom (nil will default depending on vim.opt.plitright|vim.opt.splitbelow)
                border = "single",
                height = 0.8,
                width = 0.45,
                relative = "editor",
                full_height = true, -- when set to false, vsplit will be used to open the chat buffer vs. botright/topleft vsplit
                opts = {
                    breakindent = true,
                    cursorcolumn = false,
                    cursorline = false,
                    foldcolumn = "0",
                    linebreak = true,
                    list = false,
                    numberwidth = 1,
                    signcolumn = "no",
                    spell = false,
                    wrap = true,
                },
            },
        },
        inline = {
            layout = "vertical", -- vertical|horizontal|buffer
        },
        action_palette = {
            width = 95,
            height = 10,
            prompt = "Prompt ",                 -- Prompt used for interactive LLM calls
            provider = "telescope",             -- default|telescope|mini_pick
            opts = {
                show_default_actions = true,    -- Show the default actions in the action palette?
                show_default_prompt_library = true, -- Show the default prompt library in the action palette?
            },
        },
    },
})
