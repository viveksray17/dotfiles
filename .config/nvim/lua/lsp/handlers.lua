local M = {}
local function bufkeymap(key, map)
  vim.api.nvim_buf_set_keymap("n", key, map, { noremap = true, silent = true })
end

local function lsp_keymaps(bufnr)
  local opts = { noremap = true, silent = true }
  vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "gt", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "gn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>dn", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>dp", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
end

-- On Attach for language servers
M.on_attach = function(client, bufnr)
  lsp_keymaps(bufnr)
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
