return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#171412", -- Default background
                base01 = "#9d8d7b", -- Lighter background (status bars)
                base02 = "#171412", -- Selection background
                base03 = "#9d8d7b", -- Comments, invisibles
                base04 = "#f4f1f1", -- Dark foreground
                base05 = "#f4f1f1", -- Default foreground
                base06 = "#f4f1f1", -- Light foreground
                base07 = "#f4f1f1", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#f92e2e", -- Variables, errors, red
                base09 = "#ff8484", -- Integers, constants, orange
                base0A = "#fa4c4c", -- Classes, types, yellow
                base0B = "#fa3d3d", -- Strings, green
                base0C = "#fb797b", -- Support, regex, cyan
                base0D = "#fb5b5d", -- Functions, keywords, blue
                base0E = "#fb6a6b", -- Keywords, storage, magenta
                base0F = "#ffa3a3", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
