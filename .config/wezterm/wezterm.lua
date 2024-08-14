local wezterm = require("wezterm")
local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

config = {
	enable_tab_bar = false,
	window_decorations = "RESIZE",
	window_close_confirmation = "NeverPrompt",
	window_padding = {
		left = 4,
		right = 4,
		top = 4,
		bottom = 0,
	},

	font = wezterm.font("MesloLGM Nerd Font", { weight = "Bold" }),
	font_size = 11,

	color_scheme = "Monokai Pro (Gogh)",
	colors = {
		background = "#2D2A2E",
		foreground = "#FCFCFA",
		ansi = {
			"#403E41", -- black
			"#FF6188", -- red
			"#A9DC76", -- green
			"#FFD866", -- yellow
			"#FC9867", -- blue
			"#AB9DF2", -- magenta
			"#78DCE8", -- cyan
			"#FCFCFA", -- white
		},
		brights = {
			"#727072", -- black
			"#FF6188", -- red
			"#A9DC76", -- green
			"#FFD866", -- yellow
			"#FC9867", -- blue
			"#AB9DF2", -- magenta
			"#78DCE8", -- cyan
			"#FCFCFA", -- white
		},
	},
	background = {
		{
			source = {
				Color = "#2D2A2E",
			},
			width = "100%",
			height = "100%",
			opacity = 0.85,
		},
	},
}

return config
