return
{
	"supermaven-inc/supermaven-nvim",
	dependencies = {
		"huijiro/blink-cmp-supermaven",
		{
			'saghen/blink.compat',
			version = '*',
			opts = {
				impersonate_nvim_cmp = true,
				debug = true,
			}
		}
	},

	opts = {
		log_level = "off",
		disable_inline_completion = true,
		disable_keymaps = true,
		condition = function() return false end
	}
}
