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

	force_reverse_video_cursor = true,

	-- cell_width = 0.8,
	freetype_render_target = "HorizontalLcd",
	freetype_load_flags = "NO_HINTING",
	-- freetype_interpreter_version = 40,
	font = wezterm.font("MesloLGM Nerd Font Mono"),
	font_size = 11.5,
	foreground_text_hsb = {
		hue = 1.0,
		saturation = 1.0,
		brightness = 1.15,
	},

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
