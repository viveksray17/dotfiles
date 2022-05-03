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
nkeymapsilent("x", '"_x') -- not to put the cut into the register
nkeymapsilent("dw", '"_dw')
nkeymapsilent("dd", "yydd")
nkeymapsilent("ce", '"_ce')
nkeymapsilent("cw", '"_cw')
nkeymapsilent("yia", ":%y+<CR>")
nkeymapsilent("<C-n>", ":noh<CR>")
nkeymapsilent("<leader>d", "<cmd>bdelete!<CR>")
nkeymapsilent("<C-p>", "<cmd>FZF<CR>")
nkeymap("<leader>r", ":Rg ")
nkeymap("<leader>e", ":edit ")
nkeymap("<leader>E", ":!mkdir ")
nkeymap("sr", ":%s///g<Left><Left>")
nkeymap("<leader>s", ":so %<CR>")
nkeymap("<leader>t", "<cmd>echo &ft<CR>")
nkeymap("<leader>pv", "<cmd>Ex<CR>")
nkeymap("<leader>nv", "<cmd>FZF ~/.config/nvim/lua<CR>")
nkeymap("<leader>ls", "<cmd>LspInfo<CR>")
keymap("x", "s*", '"sy:let @/=@s<CR>cgn', { noremap = true })
keymap("x", "p", "pgvy", { noremap = true })
keymap("v", "y", "ygv<Esc>", { noremap = true })
keymap("v", "<C-e>", "<C-a>", { noremap = true })
keymap("v", "g<C-e>", "g<C-a>", { noremap = true })
keymap("c", "<C-j>", "<Down>", { noremap = true })
keymap("c", "<C-k>", "<Up>", { noremap = true })
keymap("c", "<C-h>", "<Left>", { noremap = true })
keymap("c", "<C-l>", "<Right>", { noremap = true })

-- window navigation
nkeymap("<C-h>", "<C-w>h")
nkeymap("<C-l>", "<C-w>l")
nkeymap("<C-j>", "<C-w>j")
nkeymap("<C-k>", "<C-w>k")
nkeymap("<C-e>", "<C-a>")

-- vim-fugitive
nkeymapsilent("<leader>gs", "<cmd>G<CR>") -- git status
nkeymapsilent("<leader>gi", "<cmd>Git init<CR>") -- git status
nkeymapsilent("<leader>gc", "<cmd>Git commit<CR>")
nkeymapsilent("<leader>gd", "<cmd>Git diff<CR>")
nkeymapsilent("<leader>gj", "<cmd>diffget //3<CR>")
nkeymapsilent("<leader>gf", "<cmd>diffget //2<CR>")
nkeymap("<leader>gk", ":Git checkout ")
nkeymap("<leader>gp", ":Git push ")
