local options = {
  netrw_banner = 0,
  netrw_localcopydircmd = "cp -r",
  netrw_fastbrowse = 0,
  netrw_list_hide = "__pycache__,.git,node_modules,build,venv",
}
for k, v in pairs(options) do
  vim.g[k] = v
end
