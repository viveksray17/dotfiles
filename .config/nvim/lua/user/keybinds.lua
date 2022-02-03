-- aliases
local keymap = vim.api.nvim_set_keymap
local function nkeymapsilent(key, map)
  keymap("n", key, map, { noremap = true, silent = true })
end
local function nkeymap(key, map)
  keymap("n", key, map, { noremap = true })
end

-- leader key
vim.g.mapleader = " "

-- general keybinds
nkeymapsilent("H", "<cmd>bprev<CR>")
nkeymapsilent("L", "<cmd>bnext<CR>")
nkeymapsilent("U", "<c-r>") -- redo
nkeymapsilent("<leader>d", "<cmd>bdelete<CR>")
nkeymapsilent("<leader>e", "<cmd>FZF<CR>")
nkeymapsilent("<C-g>", "<C-a>")
nkeymap("<leader>r", ":so %<CR>")
nkeymap("<leader>f", "<cmd>echo &filetype<CR>")
nkeymap("<leader>pv", "<cmd>Ex<CR>")
nkeymap("<leader>nv", "<cmd>Ex ~/.config/nvim/lua<CR>")
nkeymap("<leader>ls", "<cmd>LspInfo<CR>")

-- window navigation
nkeymap("<c-h>", "<c-w>h")
nkeymap("<c-l>", "<c-w>l")
nkeymap("<c-j>", "<c-w>j")
nkeymap("<c-k>", "<c-w>k")

-- vim-fugitive
nkeymapsilent("<leader>gs", "<cmd>G<CR>") -- git status
nkeymapsilent("<leader>gc", "<cmd>Git commit<CR>")
nkeymapsilent("<leader>gd", "<cmd>Git diff<CR>")
nkeymapsilent("<leader>ck", "<cmd>Git checkout %<CR>")
nkeymapsilent("<leader>gp", "<cmd>Git push<CR>")
