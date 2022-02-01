-- aliases
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local nrp = { noremap = true }
local function nkeymapsilent(key, map)
  keymap("n", key, map, opts)
end
local function nkeymap(key, map)
  keymap("n", key, map, nrp)
end

-- leader key
vim.g.mapleader = " "

-- general keybinds
nkeymapsilent("H", ":bprev<CR>")
nkeymapsilent("L", ":bnext<CR>")
nkeymapsilent("U", "<c-r>")
nkeymapsilent("<c-x>", ":NERDTreeToggle<CR>")
nkeymapsilent("<leader>d", ":bdelete<CR>")
nkeymapsilent("<c-p>", ":FZF<CR>")
nkeymapsilent("<C-g>", "<C-a>")
nkeymap("<leader>r", ":so %<CR>")
nkeymap("<leader>f", ":echo &filetype<CR>")
nkeymap("<leader>ls", ":LspInfo<CR>")

-- window navigation
nkeymap("<c-h>", "<c-w>h")
nkeymap("<c-l>", "<c-w>l")
nkeymap("<c-j>", "<c-w>j")
nkeymap("<c-k>", "<c-w>k")

-- vim-fugitive
nkeymapsilent("<leader>gs", ":G<CR>")
nkeymapsilent("<leader>gc", ":Git commit<CR>")
nkeymapsilent("<leader>gd", ":Git diff<CR>")
nkeymapsilent("<leader>ck", ":Git checkout %<CR>")
nkeymapsilent("<leader>gp", ":Git push<CR>")
