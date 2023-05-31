function normal_silent_keymap(key, map)
	vim.api.nvim_set_keymap("n", key, map, { noremap = true, silent = true })
end
function normal_keymap(key, map)
	vim.api.nvim_set_keymap("n", key, map, { noremap = true })
end
function command_keymap(key, map)
	vim.api.nvim_set_keymap("c", key, map, { noremap = true })
end
local o = vim.opt
local g = vim.g

-- Plugins
require("paq")({
	"savq/paq-nvim",
	"junegunn/fzf",
	"junegunn/fzf.vim",
	"numToStr/Comment.nvim",
	"nvim-lua/plenary.nvim",
	"jose-elias-alvarez/null-ls.nvim",
	"maxmellon/vim-jsx-pretty",
	"alvan/vim-closetag",
	"neovim/nvim-lspconfig",
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
	"joshdick/onedark.vim",
})

-- Commenting Setup
require("Comment").setup()

-- Colorscheme Setup
o.termguicolors = false
vim.cmd("colorscheme onedark")
vim.cmd([[
highlight Normal ctermbg=none
highlight TabLineFill ctermbg=darkgrey
]])

-- LSP Setup
local on_attach = function(client, bufnr)
	local bufopts = { noremap = true, silent = true, buffer = bufnr }
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
	vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
	vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, bufopts)
	vim.keymap.set("n", "<leader>gn", vim.lsp.buf.rename, bufopts)
	vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
	vim.keymap.set("n", "ge", vim.diagnostic.open_float, bufopts)
end

require("lspconfig").tsserver.setup({
	on_attach = on_attach,
})
require("lspconfig").pyright.setup({
	on_attach = on_attach,
})

-- CSS lsp setup
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
require("lspconfig").cssls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

-- Completion Setup
o.completeopt = { "menu", "menuone", "noselect" }
local cmp = require("cmp")
cmp.setup({
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
	}),
	mapping = {
		["<C-j>"] = function()
			if cmp.visible() then
				cmp.select_next_item()
			end
		end,
		["<C-k>"] = function()
			if cmp.visible() then
				cmp.select_prev_item()
			end
		end,
		["<C-Space>"] = cmp.mapping.complete(),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
	},
})

-- Null-ls Setup
local null_ls = require("null-ls")
local formatting = null_ls.builtins.formatting
on_attach_null = function(client)
	if client.server_capabilities.documentFormattingProvider then
		vim.api.nvim_create_user_command("Format", function()
			vim.lsp.buf.format({ timeout_ms = 5000 })
		end, { nargs = 0 })
	end
end

null_ls.setup({
	sources = {
		formatting.autopep8,
		formatting.prettier.with({
			extra_args = { "--use-tabs" },
			filetypes = {
				"html",
				"typescript",
				"javascript",
				"css",
				"yaml",
				"json",
				"javascriptreact",
				"typescriptreact",
			},
		}),
		formatting.stylua,
	},
	on_attach = on_attach_null,
})

-- General Settings
o.relativenumber = true
o.number = true
o.signcolumn = "yes"
o.mouse = ""
o.smartcase = true
o.wrap = false
o.backup = false
o.writebackup = false
o.swapfile = false
o.autoindent = true
o.ignorecase = true
o.hlsearch = false
o.shortmess:append("c")
g.fzf_action = { ["enter"] = "tab split" }

-- Tab Settings
o.tabstop = 4
o.shiftwidth = 4
o.expandtab = false

-- Keybindings
g.mapleader = " "
normal_silent_keymap("H", "<cmd>tabprev<cr>")
normal_silent_keymap("L", "<cmd>tabnext<cr>")
normal_silent_keymap("U", "<C-r>") -- redo
normal_silent_keymap("<leader>pv", "<cmd>Tex<cr>")
normal_silent_keymap("<leader>s", "<cmd>source %<cr>")
normal_silent_keymap("<leader>t", "<cmd>echo &ft<cr>")
normal_silent_keymap("<leader>h", "<cmd>bprev<cr>")
normal_silent_keymap("<leader>l", "<cmd>bnext<cr>")
normal_silent_keymap("<leader>dd", "<cmd>bdelete<cr>")
normal_silent_keymap("<leader>nv", "<cmd>tabedit ~/.config/nvim/init.lua<cr>")
normal_silent_keymap("<C-p>", ":FZF<cr>")
normal_silent_keymap("<C-d>", "<C-d>zz")
normal_silent_keymap("<C-u>", "<C-u>zz")
normal_silent_keymap("<leader>b", "<cmd>Buffers<cr>")
normal_keymap("<leader>r", ":%s///g<left><left><left>")
normal_keymap("<leader>e", ":tabedit ")
command_keymap("<C-j>", "<down>")
command_keymap("<C-k>", "<up>")
command_keymap("<C-h>", "<left>")
command_keymap("<C-l>", "<right>")

-- Netrw Settings
g.netrw_banner = 0
g.netrw_list_hide = "__pycache__,.git,node_modules,venv"

-- Closetags
g.closetag_filenames = "*.html,*.jsx,*.tsx"
g.closetag_xhtml_filenames = "*.jsx,*.tsx"
g.closetag_emptyTags_caseSensitive = 1

-- User Commands
vim.api.nvim_create_user_command("PandocMdtoPdf", function()
	if vim.bo.filetype == "markdown" then
		os.execute(
			string.format(
				"pandoc %s -o %s/pdf-converted/%s.pdf",
				vim.fn.expand("%:p"),
				vim.fn.expand("%:p:h"),
				vim.fn.expand("%:r")
			)
		)
	else
		print("filetype not supported")
	end
end, { nargs = 0 })
