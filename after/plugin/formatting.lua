local conform = require("conform")
conform.setup({
	formatters_by_ft = {
		python = { "isort", "black" },
		rust = { "rustfmt" },
		lua = { "stylua" },
		javascript = { "prettierd" },
		css = { "prettierd" },
		markdown = { "prettierd" },
		graphql = { "prettierd" },
		typescript = { "prettierd" },
	},

	format_on_save = {
		lsp_fallback = true,
		async = false,
		timeout_ms = 500,
	},
})
