local wezterm = require("wezterm")
local mux = wezterm.mux
local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- config.default_prog = { "/opt/homebrew/bin/tmux", "-f", "/Users/josemartins/.tmux.conf" }

wezterm.on("gui-startup", function()
	local _, _, window = mux.spawn_window({})
	window:gui_window():maximize()
end)

config.hide_mouse_cursor_when_typing = false

config.font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Medium" })
-- config.font = wezterm.font("Montserrat", { weight = "Medium" })
config.font_size = 14
config.color_scheme = "Catppuccin Macchiato"
config.enable_tab_bar = false
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

local dimmer = { brightness = 0.01 }
config.background = {
	{
		source = {
			File = "/Users/josemartins/Documents/Resources/Images/minimalist cyberpunk-style.png",
		},
		hsb = dimmer,
	},
}

return config
