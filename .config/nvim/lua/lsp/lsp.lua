require("lspconfig").pyright.setup({
  on_attach = require("lsp.handlers").on_attach,
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "off",
      },
    },
  },
})
require("lspconfig").gopls.setup({
  on_attach = require("lsp.handlers").on_attach,
})
