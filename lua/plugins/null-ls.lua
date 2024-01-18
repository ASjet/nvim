return {
	-- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
	---@see https://github.com/jose-elias-alvarez/null-ls.nvim
	"jose-elias-alvarez/null-ls.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.completion.spell,
				null_ls.builtins.code_actions.refactoring,
				null_ls.builtins.formatting.clang_format,
				null_ls.builtins.formatting.gofmt,
				null_ls.builtins.formatting.jq,
			},
		})
	end
}
