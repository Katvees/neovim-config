return {
	"vyfor/cord.nvim",
	build = ":Cord update",
	opts = {
		enabled = true,
		editor = {
			client = "neovim",
			tooltip = "Not Emacs",
			icon = nil,
		},
		display = {
			theme = "default",
			flavor = "accent",
			swap_fields = false,
			swap_icons = false,
		},
		timestamp = {
			enabled = true,
			reset_on_idle = false,
			reset_on_change = false,
		},
		idle = {
			enabled = true,
			timeout = 300000,
			show_status = true,
			ignore_focus = true,
			unidle_on_focus = true,
			smart_idle = true,
			details = "Idling",
			state = nil,
			tooltip = "💤",
			icon = nil,
		},
		text = {
			default = nil,
			workspace = function(opts) return "In " .. opts.workspace end,
			viewing = function(opts) return "Viewing " .. opts.filename end,
			editing = function(opts) return "Editing " .. opts.filename end,
			file_browser = function(opts) return "Browsing files in " .. opts.name end,
			plugin_manager = function(opts) return "Managing plugins in " .. opts.name end,
			lsp = function(opts) return "Configuring LSP in " .. opts.name end,
			docs = function(opts) return "Reading " .. opts.name end,
			vcs = function(opts) return "Committing changes in " .. opts.name end,
			notes = function(opts) return "Taking notes in " .. opts.name end,
			debug = function(opts) return "Debugging in " .. opts.name end,
			test = function(opts) return "Testing in " .. opts.name end,
			diagnostics = function(opts) return "Fixing problems in " .. opts.name end,
			games = function(opts) return "Playing " .. opts.name end,
			terminal = function(opts) return "Running commands in " .. opts.name end,
			dashboard = "Home",
		},
		buttons = {
			{
				label = function(opts) return opts.repo_url and "View Repository" or "View Github" end,
				url = function(opts) return opts.repo_url or "https://github.com/Katvees" end,
			}
		},
		assets = nil,
		variables = nil,
		hooks = {
			ready = nil,
			shutdown = nil,
			pre_activity = nil,
			post_activity = nil,
			idle_enter = nil,
			idle_leave = nil,
			workspace_change = nil,
		},
		plugins = nil,
		advanced = {
			plugin = {
				autocmds = true,
				cursor_update = "on_hold",
				match_in_mappings = true,
			},
			server = {
				update = "fetch",
				pipe_path = nil,
				executable_path = nil,
				timeout = 300000,
			},
			discord = {
				reconnect = {
					enabled = false,
					interval = 5000,
					initial = true,
				},
			},
			workspace = {
				root_markers = {
					".git",
					".hg",
					".svn",
					".jj"
				},
				limit_to_cwd = false,
			},
		},
	}
}
