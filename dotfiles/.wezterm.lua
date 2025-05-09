local wezterm = require("wezterm")
local mux = wezterm.mux
local config = wezterm.config_builder()

wezterm.on("gui-startup", function()
	local _, _, window = mux.spawn_window({})
	window:gui_window():maximize()
end)

config = {
	hide_mouse_cursor_when_typing = false,
	font = wezterm.font("FiraCode Nerd Font", { weight = "Medium" }),
	-- font = wezterm.font("Hack Nerd Font", { weight = "Bold" }),
	font_size = 13.5,
	color_scheme = "Gruvbox Dark (Gogh)",
	enable_tab_bar = false,
	window_close_confirmation = "NeverPrompt",
}

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

config.keys = {
	{
		key = "s",
		mods = "CMD",
		action = wezterm.action.SendKey({ key = "s", mods = "CTRL" }),
	},
}

config.background = {
	{
		source = {
			File = "/Users/josemartins/Documents/Resources/Images/minimalist cyberpunk-style.png",
		},
		hsb = {
			hue = 1.0,
			saturation = 1.01,
			brightness = 0.02,
		},
		width = "100%",
		height = "100%",
	},
	{
		source = {
			Color = "#282C35",
		},
		width = "100%",
		height = "100%",
		opacity = 0.1,
	},
}

return config
