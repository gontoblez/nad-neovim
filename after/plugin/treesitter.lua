require'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all" (the five listed parsers should always be installed)
    ensure_installed = {
        "latex",
        "html",
        "css",
        "javascript",
        "bash",
        "lua",
        "vim",
        "vimdoc",
        "query"
    },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- list of parsers to ignore installing
    ignore_install = { "" },

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = true,

    highlight = {
        enable = true,
        disable = { "" }, -- a list of languages that will not be highlighted with treesitter
        additional_vim_regex_highlighting = true,
    },
    indent = {
        enable = true,
        disable = {
            "yaml"
        }
    },
    rainbow = {
        enable = true,
        -- list of languages you want to disable the plugin for
        disable = { 'jsx', 'cpp' },
        -- Which query to use for finding delimiters
        query = 'rainbow-parens',
        -- Highlight the entire buffer all at once
        strategy = require('ts-rainbow').strategy.global,
    }
}
