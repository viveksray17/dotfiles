local null_ls = require("null-ls")
local formatting = require("null-ls").builtins.formatting

null_ls.setup({
  sources = {
    formatting.autopep8,
    formatting.djhtml.with({
      extra_args = { "-t", "2" },
      filetypes = { "html", "htmldjango" },
    }),
    formatting.stylua.with({
      extra_args = { "--indent-type", "Spaces", "--indent-width", "2" },
    }),
  },
  -- format on save
  on_attach = require("lsp.handlers").on_attach_null,
})
