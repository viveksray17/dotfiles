local null_ls = require("null-ls")
local formatting = require("null-ls").builtins.formatting

null_ls.setup({
	debug = true,
	sources = {
		formatting.black.with({ extra_args = { "--fast" } }),
		formatting.djhtml.with({ extra_args = { "-t", "2" } }),
		formatting.stylua,
	},
	-- format on save
	on_attach = function(client)
		if client.resolved_capabilities.document_formatting then
			vim.cmd([[
            augroup LspFormatting
                autocmd! * <buffer>
                autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
            augroup END
            ]])
		end
	end,
})
