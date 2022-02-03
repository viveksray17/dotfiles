local options = {
  guicursor = "",
  wrap = false,
  relativenumber = true,
  nu = true,
  numberwidth = 1, -- width for line number
  laststatus = 0,
  hlsearch = false,
  expandtab = true,
  shiftwidth = 2,
  tabstop = 2,
  scrolloff = 15,
  autoindent = true,
  clipboard = "unnamedplus",
  encoding = "utf-8",
  backup = false,
  writebackup = false,
  signcolumn = "number",
  completeopt = { "menu", "menuone", "noselect" },
}
vim.g.python3_host_prog = vim.fn.expand("~/.local/share/nvim/neovim_env/bin/python3")

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd([[
  syntax enable
  filetype plugin indent on
  colorscheme gruvbox
  highlight Normal ctermbg=none
  hi Visual cterm=none ctermbg=darkgrey
  autocmd BufNewFile,BufRead ~/Documents/code/python_projects/**/*.html set ft=htmldjango
]])
