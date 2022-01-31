local options = {
  NERDTreeIgnore = { "node_modules", "__pycache__", "__init__.py", "venv" },
  NERDTreeMinimalUI = 1,
  NERDTreeDirArrowExpandable = "",
  NERDTreeDirArrowCollapsible = "",
}
for k, v in pairs(options) do
  vim.g[k] = v
end
