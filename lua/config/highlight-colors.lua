require("nvim-highlight-colors").setup({
	render = 'background',
	virtual_symbol = '■',
	virtual_symbol_prefix = ' ',
	virtual_symbol_suffix = '',
	virtual_symbol_position = 'eow',
	enable_hex = true,
	enable_short_hex = true,
	enable_rgb = true,
	enable_hsl = true,
	enable_var_usage = true,
	enable_named_colors = true,
	enable_tailwind = true,

	exclude_filetypes = {},
	exclude_buftypes = {}
})
require("nvim-highlight-colors").turnOn()

-- "rgb(1,2,3)"

local augroup = vim.api.nvim_create_augroup("highlight-colors")

vim.api.nvim_create_autocmd("ModeChanged", {
	callback = function()
require("nvim-highlight-colors").turnOff()
	end,
	pattern = "*:[vVs]",
	group = augroup,
})

vim.api.nvim_create_autocmd("ModeChanged", {
	callback = function()
require("nvim-highlight-colors").turnOn()
	end,
	pattern = "[vVs]:[^vVs]",
	group = augroup,
})
