local servers = { "pyright", "html" }

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

for _, lsp in pairs(servers) do
  require("lspconfig")[lsp].setup({
    on_attach = require("lsp.handlers").on_attach,
    capabilities = capabilities,
  })
end
