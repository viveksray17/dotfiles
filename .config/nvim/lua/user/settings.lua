local options = {
  guicursor = "",
  wrap = false,
  relativenumber = true,
  numberwidth = 1,
  nu = true,
  expandtab = true,
  shiftwidth = 2,
  tabstop = 2,
  scrolloff = 15,
  autoindent = true,
  clipboard = "unnamedplus",
  encoding = "utf-8",
  backup = false,
  writebackup = false,
  signcolumn = "yes",
  completeopt = { "menu", "menuone", "noselect" },
}
vim.g.python3_host_prog = vim.fn.expand("~/.local/share/nvim/neovim_env/bin/python3")
vim.g.fzf_layout = { ["down"] = "20%" }

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd([[
  colorscheme gruvbox
  highlight Normal ctermbg=none
  hi Visual cterm=none ctermbg=darkgrey
  nnoremap <silent> s* :let @/='\<'.expand('<cword>').'\>'<CR>cgn
]])
