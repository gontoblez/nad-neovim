--local keymap = vim.keymap
vim.g.mapleader = " "           -- set mod key to <SPACE>


-- vim.keymap.set("<mode>", "<keys", <command>)
--
-- NORMAL MODE REMAPS
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)           -- netrw with <ldr>pv

-- Navigate windows
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- INSERT MODE REMAPS
vim.keymap.set("i", "jk", "<ESC>")                      -- Enter NORMAL mode with "jk"

-- VISUAL MODE REMAPS
-- indent and stay in indent mode
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- move text up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- better buffer management
vim.keymap.set("x", "<leader>p", "\"_dP")               -- paste over & don't yank again

-- better half-page scrolling
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- keep cursor in the middle when pressing 'n' on searches
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- yank to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- deleting to void register
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- Q is evil
vim.keymap.set("n", "Q", "<nop>")

-- replace the word you're on in all it's appearances in the buffer you're in
-- <C-r><C-w> is a shortcut that 'prints' the word your cursor is on in command mode
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- chmod +x from within vim
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
