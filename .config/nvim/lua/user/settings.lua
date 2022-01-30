local options = {
	guicursor = "",
	wrap = false,
	relativenumber = true,
	nu = true,
	laststatus = 0,
	hlsearch = false,
	tabstop = 4,
	softtabstop = 4,
	shiftwidth = 2,
	scrolloff = 15,
	autoindent = true,
	clipboard = "unnamedplus",
	encoding = "utf-8",
	backup = false,
	writebackup = false,
	signcolumn = "number",
	completeopt = { "menu", "menuone", "noselect" },
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.cmd([[
	let g:python3_host_prog = expand('~/.local/share/nvim/neovim_env/bin/python3')
	syntax enable
	filetype plugin indent on
	colorscheme gruvbox
	highlight Normal ctermbg=NONE
	autocmd BufNewFile,BufRead ~/Documents/code/python_projects/**/*.html set ft=htmldjango
]])
