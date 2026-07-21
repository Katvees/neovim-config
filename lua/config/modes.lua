local palette = require("nightfox.palette.nightfox").palette
require('modes').setup({
	colors = {
		bg = "",
		copy = palette.magenta.base,
		delete = palette.red.bright,
		format = palette.orange.base,
		insert = palette.cyan.bright,
		replace = palette.orange.base,
		visual = palette.blue.base,
	},
	line_opacity = 0.4,
	set_cursor = false,
	set_cursorline = true,
	set_number = false,
	set_signcolumn = false,
})
