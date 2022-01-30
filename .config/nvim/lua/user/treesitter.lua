local configs = require("nvim-treesitter.configs")
configs.setup({
	ensure_installed = "maintained",
	highlight = {
		enable = true,
	},
	additional_vim_regex_highlighting = false,
})
