-- :help <option>

-- vim.cmd = vim command
vim.cmd.syntax("on")
vim.cmd.nohl()
vim.cmd [[set iskeyword+=-]]        -- treats shaker-shawaker as one word
vim.cmd [[set encoding=UTF-8]]
vim.cmd [[set fileencoding=utf-8]]
-- vim.cmd.colorscheme("gruvbox")      -- gruvbox colorscheme

-- vim.opt = vim option
vim.opt.number = true               -- numbered lines
vim.opt.relativenumber = true       -- relatively numbered lines
vim.opt.cursorline = true           -- highlight the line of the cursor
vim.opt.cursorcolumn = true         -- highlight the column of the cursor
vim.opt.hidden = true               -- switch buffer if current not saved
vim.opt.undofile = true             -- enables undo file
vim.opt.termguicolors = true        -- set termguicolors original terminal colors
vim.opt.expandtab = true            -- turns <tab> into <space>s
vim.opt.splitbelow = true           -- splits below the original window (?)
vim.opt.splitright = true           -- splits to the right of the original window (?)
vim.opt.ruler = true
vim.opt.smartcase = true            -- smartcase
vim.opt.swapfile = false            -- no swap
vim.opt.wrap = false                -- set nowrap
vim.opt.backup = false              -- set nobackup
vim.opt.writebackup = false              -- set nobackup
vim.opt.hlsearch = false            -- set nohlsearch
vim.opt.cmdheight = 2               -- height of the bar below
--vim.opt.showtabline = 3             -- always show tabs
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.pumheight = 10              -- popup menu height
vim.opt.sidescrolloff = 8          -- keeps stuff centered
vim.opt.scrolloff = 15              -- keeps stuff centered
vim.opt.signcolumn = "yes"          -- sign column
vim.opt.fileencoding = "utf-8"      -- you use vim. you know html
vim.opt.culopt = "both"             -- better highlighting
vim.opt.guicursor = ""              -- classic cursor
vim.opt.mouse = ""                  -- why mouse?
