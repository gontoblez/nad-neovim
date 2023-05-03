local status_ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    print("Treesitter is not ok")
    return
end



treesitter.setup {
    -- A list of parser names, or "all" (the five listed parsers should always be installed)
    ensure_installed = {
        "latex",
        "html",
        "css",
        "javascript",
        "nix",
        "bash",
        "lua",
        "vim",
        "vimdoc",
        "query"
    },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- list of parsers to ignore installing
    ignore_install = { "ini" },

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
}
