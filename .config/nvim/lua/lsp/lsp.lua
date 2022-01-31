local servers = { "pyright", "html" }
for _, lsp in pairs(servers) do
	require("lspconfig")[lsp].setup({
		on_attach = require("lsp.handlers").on_attach,
		capabilities = require("lsp.handlers").capabilities,
	})
end
