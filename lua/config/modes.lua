local pal = require("nightfox.palette.nightfox").palette
require('modes').setup({
	colors = {
		bg = "",
		copy = pal.cyan.bright,
		delete = pal.red.bright,
		change = pal.orange.bright,
		format = pal.orange.base,
		insert = pal.bg3,
		replace = pal.orange.base,
		visual = pal.bg3,
		select = pal.bg3,
	},
	line_opacity = {
		copy = 0.4,
		delete = 0.3,
		change = 0.3,
		format = 0.3,
		insert = 1,
		replace = 0.2,
		visual = 1,
		select = 1,
	},
	set_cursor = false,
	set_cursorline = true,
	set_number = false,
	set_signcolumn = false,
})
