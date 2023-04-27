local status_ok, null_ls = pcall(require, "null-ls")
if not status_ok then
	print("null-ls is dead. no formatting for you today")
	return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

-- MAKE SURE THE PACKAGES AFTER formatting. & diagnostics.
-- ARE INSTALLED ON YOUR SYSTEM

null_ls.setup({
	debug = false,
	sources = {
		formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" } }),
		formatting.black.with({ extra_args = { "--fast" } }),
		formatting.stylua,
		formatting.beautysh,
		formatting.latexindent,
		diagnostics.chktex,
		diagnostics.shellcheck,
		diagnostics.flake8,
	},
})


vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format() end)
-- vim.keymap.set("n", "<leader>f", ":lua vim.lsp.buf.format()")
