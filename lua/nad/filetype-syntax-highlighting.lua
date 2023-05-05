local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- i3 syntax highlighting
autocmd({ "BufNewFile", "BufRead" }, {
	group = augroup("i3config_ft_detection", { clear = true }),
	pattern = { "*/i3/config", "*/i3/config.d/*", "~/.config/i3/*", "*.i3" },
	command = "set filetype=i3config",
})
