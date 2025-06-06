local helpers = require("incline.helpers")
local navic = require("nvim-navic")
local devicons = require("nvim-web-devicons")
require("incline").setup({
	window = {
		padding = 0,
		margin = { horizontal = 0, vertical = 0 },
	},
	ignore = {
		buftypes = {},
		wintypes = {},
		filetypes = {},
		unlisted_buffers = false
	},

	render = function(props)
		local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ':t')
		if filename == '' then
			filename = '[No Name]'
		end
		local ft_icon, ft_color = devicons.get_icon_color(filename)
		local modified = vim.bo[props.buf].modified
		local res = {
			ft_icon and { ' ', ft_icon, ' ', guibg = ft_color, guifg = helpers.contrast_color(ft_color) } or 'Test',
			' ',
			{ filename, gui = modified and 'bold,italic' or 'bold' },
			guibg = HighlightToHex("TabLine", "bg"),
		}

		if props.focused then
			for _, item in ipairs(navic.get_data(props.buf) or {}) do
				table.insert(res, {
					{ ' > ',     group = 'navicseparator' },
					{ item.icon, group = 'navicicons' .. item.type },
					{ item.name, group = 'navictext' },
				})
			end
		end
		table.insert(res, ' ')
		return res
	end,
})
