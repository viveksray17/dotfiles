local options = {
  netrw_banner = 0,
  netrw_localcopydircmd = "cp -r",
  netrw_fastbrowse = 0,
  netrw_list_hide = "__pycache__,__init__.py,.git,node_modules,build",
}
for k, v in pairs(options) do
  vim.g[k] = v
end
