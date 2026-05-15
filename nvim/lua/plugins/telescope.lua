require('telescope').setup{
    defaults = {
        sorting_strategy = "ascending",
        layout_strategy = "horizontal",

        layout_config = {
            horizontal = {
                prompt_position = "top",
                preview_width = 0.6,
                results_width = 0.4,
            },
            width = 0.9,
            height = 0.85,
            preview_cutoff = 120,
        },

        winblend = 0,

    },

    pickers = {
        find_files = {
            hidden = true;
            find_command = {
                "rg",
                "--files",
                "--hidden",
                "-g",
                "!.git",
                "-g",
                "!.config/*",
                "-g",
                "!.cache/*",
                "-g",
                "!.local/*",
                "-g",
                "!memes/*",
                "-g",
                "!.pki",
            },
        },
    },
}
