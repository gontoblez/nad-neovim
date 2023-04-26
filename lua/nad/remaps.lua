--local keymap = vim.keymap
vim.g.mapleader = " "           -- set mod key to <SPACE>


-- vim.keymap.set("<mode>", "<keys", <command>)
--
-- NORMAL MODE REMAPS
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)           -- netrw with <ldr>pv
vim.keymap.set("n", "<leader>e", ":Lex 30<cr>")         -- netrw in left pane (change soon)

-- Navigate windows
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- INSERT MODE REMAPS
vim.keymap.set("i", "jk", "<ESC>")                      -- Enter NORMAL mode with "jk"

-- VISUAL MODE REMAPS
-- stay in indent mode
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- move text up and down
vim.keymap.set("v", "<A-j>", ":m .+1<CR>==")

-- better buffer management
vim.keymap.set("v", "p", '"_dP')                        -- paste over & don't yank again
