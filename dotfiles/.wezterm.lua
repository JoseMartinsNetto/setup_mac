local wezterm = require("wezterm")
local mux = wezterm.mux
local config = wezterm.config_builder()

wezterm.on("gui-startup", function()
	local _, _, window = mux.spawn_window({})
	window:gui_window():maximize()
end)

config = {
	hide_mouse_cursor_when_typing = false,
	font = wezterm.font("FiraCode Nerd Font", { weight = "Regular" }),
	font_size = 14,
	color_scheme = "nord",
	enable_tab_bar = false,
	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE",
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

-- local dimmer = { brightness = 0.001 }
-- config.background = {
-- 	{
-- 		source = {
-- 			File = "/Users/josemartins/Documents/Resources/Images/minimalist cyberpunk-style.png",
-- 		},
-- 		hsb = dimmer,
-- 	},
-- }

return config
