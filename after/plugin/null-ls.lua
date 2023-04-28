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
		formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" } }), -- install with npm
		formatting.black.with({ extra_args = { "--fast" } }), -- install with pip
		formatting.stylua,          -- install with cargo
		formatting.beautysh,        -- install with pip
		formatting.latexindent,     -- if you have texlive-full installed, you have this package
		diagnostics.chktex,         -- same with latexindent
		diagnostics.shellcheck,     -- install with apt (on debian)
		diagnostics.flake8,         -- install with pip
	},
})


vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format() end)
