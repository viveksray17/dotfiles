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
nkeymapsilent("ce", '"_ce')
nkeymapsilent("cw", '"_cw')
nkeymapsilent("<C-n>", ":noh<CR>")
nkeymapsilent("<leader>d", "<cmd>bdelete!<CR>")
nkeymapsilent("<C-p>", "<cmd>FZF<CR>")
nkeymap("<leader>r", ":Rg ")
nkeymap("<leader>e", ":edit ")
nkeymap("sr", ":%s///g<Left><Left>")
nkeymap("<leader>s", ":so %<CR>")
nkeymap("<leader>t", "<cmd>echo &ft<CR>")
nkeymap("<leader>j", "<cmd>cnext<CR>")
nkeymap("<leader>k", "<cmd>cprev<CR>")
nkeymap("<leader>J", "<cmd>lnext<CR>")
nkeymap("<leader>K", "<cmd>lprev<CR>")
nkeymap("<leader>pv", "<cmd>Ex<CR>")
nkeymap("<leader>nv", "<cmd>FZF ~/.config/nvim/lua<CR>")
nkeymap("<leader>ls", "<cmd>LspInfo<CR>")
keymap("x", "s*", '"sy:let @/=@s<CR>cgn', { noremap = true })
keymap("x", "p", "pgvy", { noremap = true })
keymap("v", "y", "ygv<Esc>", { noremap = true })
keymap("c", "<C-j>", "<Down>", { noremap = true })
keymap("c", "<C-k>", "<Up>", { noremap = true })

-- window navigation
nkeymap("<c-h>", "<c-w>h")
nkeymap("<c-l>", "<c-w>l")
nkeymap("<c-j>", "<c-w>j")
nkeymap("<c-k>", "<c-w>k")

-- vim-fugitive
nkeymapsilent("<leader>gs", "<cmd>G<CR>") -- git status
nkeymapsilent("<leader>gi", "<cmd>Git init<CR>") -- git status
nkeymapsilent("<leader>gc", "<cmd>Git commit<CR>")
nkeymapsilent("<leader>gd", "<cmd>Git diff<CR>")
nkeymap("<leader>gk", ":Git checkout ")
nkeymapsilent("<leader>gp", "<cmd>Git push<CR>")
