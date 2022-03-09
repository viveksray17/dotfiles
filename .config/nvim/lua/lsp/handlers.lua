local M = {}
local function bufkeymap(key, map)
  vim.api.nvim_buf_set_keymap(bufnr, "n", key, map, { noremap = true, silent = true })
end

-- On Attach for language servers
M.on_attach = function(client, bufnr)
  bufkeymap("gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
  bufkeymap("gD", "<cmd>lua vim.lsp.buf.declaration()<CR>")
  bufkeymap("gi", "<cmd>lua vim.lsp.buf.implementation()<CR>")
  bufkeymap("gr", "<cmd>lua vim.lsp.buf.references()<CR>")
  bufkeymap("gt", "<cmd>lua vim.lsp.buf.type_definition()<CR>")
  bufkeymap("K", "<cmd>lua vim.lsp.buf.hover()<CR>")
  bufkeymap("gn", "<cmd>lua vim.lsp.buf.rename()<CR>")
  if client.resolved_capabilities.document_formatting then
    vim.cmd([[
    augroup lspformatting
      autocmd! * <buffer>
      autocmd bufwritepre <buffer> lua vim.lsp.buf.formatting_sync()
    augroup end
    ]])
  end
end

-- On Attach for null-ls
M.on_attach_null = function(client)
  if client.resolved_capabilities.document_formatting then
    vim.cmd([[
    augroup lspformattingexternal
      autocmd! * <buffer>
      autocmd bufwritepre <buffer> lua vim.lsp.buf.formatting_sync()
    augroup end
    ]])
  end
end
return M
