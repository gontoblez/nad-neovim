-- Automatically install packer
local install_path = vim.fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = vim.fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print("Installing packer.. Reopen Neovim!")
    vim.cmd [[packadd packer.nvim]]
end

-- Automatically reload neovim when saving packer.lua file
vim.cmd [[
augroup packer_user_config
autocmd!
autocmd BufWritePost packer.lua source <afile> | PackerSync
augroup end
]]

-- Use a protected call so nvim doesn't scream on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    print("Well, neovim doesn't like this")
    return
end

-- use a popup window for packer
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    },
}

-- Plugins here
return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'                -- Packer can manage itself
    use "nvim-lua/popup.nvim"                   -- popup API
    use "nvim-lua/plenary.nvim"                 -- plenary
    -- telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use "vim-scripts/gruvbox"                   -- gruvbox colorscheme
    use("ThePrimeagen/harpoon")                 -- harpoon
    --treesitter
    use('nvim-treesitter/nvim-treesitter',
    {run = ':TSUpdate'})
    -- markdown preview
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })
    use 'mbbill/undotree'
    use 'tpope/vim-fugitive'
    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
            'williamboman/mason.nvim',
            run = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
        },
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},         -- Required
        {'hrsh7th/cmp-buffer'},       -- Optional
        {'hrsh7th/cmp-path'},         -- Optional
        {'hrsh7th/cmp-cmdline'},      -- Optional
        {'hrsh7th/cmp-nvim-lsp'},     -- Required
        {'hrsh7th/cmp-nvim-lua'},     -- Optional
        {'saadparwaiz1/cmp_luasnip'}, -- Optional

        -- Snippets
        {'L3MON4D3/LuaSnip'},             -- Required
        {'rafamadriz/friendly-snippets'}, -- Optional
    }
}
--- Automatically load config after cloning packer.nvim
if PACKER_BOOTSTRAP then
    require("packer").sync()
end
end)
