return {
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {
			rawlen
		},
		dependencies = {
			"HiPhish/rainbow-delimiters.nvim",
			"shellRaining/hlchunk.nvim",
		},

		config = function()
			local highlight = {
				'RainbowRed',
				'RainbowYellow',
				'RainbowBlue',
				'RainbowViolet',
				'RainbowOrange',
				'RainbowGreen',
				'RainbowCyan',
			}
			local hooks = require("ibl.hooks")
			-- create the highlight groups in the highlight setup hook, so they are reset
			-- every time the colorscheme changes
			hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
				vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
				vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
				vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
				vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
				vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
				vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
				vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
			end)

			vim.g.rainbow_delimiters = { highlight = highlight }
			require("ibl").setup {
				indent = {
					char = "│",
					tab_char = nil,
					highlight = "IblIndent",
					smart_indent_cap = true,
					priority = 1,
					repeat_linebreak = true,
				},

				whitespace = {
					highlight = "IblWhitespace",
					remove_blankline_trail = true,
				},

				scope = {
					highlight = highlight
				}
			}

			hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)


			require("hlchunk").setup({
				chunk = {
					enable = false,
					priority = 15,
					notify = true,
					style = {
						-- "#5ef33e",
						-- "#c21f30",
					},
					chars = {
						horizontal_line = "─",
						vertical_line = "│",
						left_top = "┌",
						left_bottom = "└",
						right_arrow = "",
					},
					textobject = "ic",
					duration = 0,
					error_sign = true,
					exclude_filetypes = {
						TelescopePrompt = true,
						cmp = true,
						cmp_docs = true,
					},
				},
				line_num = {
					enable = true,
					style = {
						"#DBC074",
						"#E06C75",
						"#E5C07B",
						"#61AFEF",
						"#D19A66",
						"#98C379",
						"#C678DD",
						"#56B6C2",
					},
				},
				blank = { enable = false },
			})
		end
	},
}
