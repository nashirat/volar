return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#000000", -- Default background
                base01 = "#534439", -- Lighter background (status bars)
                base02 = "#000000", -- Selection background
                base03 = "#534439", -- Comments, invisibles
                base04 = "#ededed", -- Dark foreground
                base05 = "#ffffff", -- Default foreground
                base06 = "#ffffff", -- Light foreground
                base07 = "#ededed", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#d37b55", -- Variables, errors, red
                base09 = "#78361a", -- Integers, constants, orange
                base0A = "#e0dfd5", -- Classes, types, yellow
                base0B = "#B8C4BB", -- Strings, green
                base0C = "#eaeff0", -- Support, regex, cyan
                base0D = "#B8D2DF", -- Functions, keywords, blue
                base0E = "#d1b494", -- Keywords, storage, magenta
                base0F = "#e0e0d5", -- Deprecated, brown/yellow
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
