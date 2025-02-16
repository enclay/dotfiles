local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Material Vivid (base16)"
config.font_size = 18
config.initial_rows = 25
config.initial_cols = 80
config.hide_tab_bar_if_only_one_tab = true
config.adjust_window_size_when_changing_font_size = false
config.show_new_tab_button_in_tab_bar = false
config.window_close_confirmation = "NeverPrompt"

config.keys = {
	{ key="RightArrow", mods="SUPER", action=wezterm.action.ActivateTabRelative(1) },
	{ key="LeftArrow", mods="SUPER", action=wezterm.action.ActivateTabRelative(-1) },
}

config.colors = {
	tab_bar = {
		background = "#ff0000",
		active_tab = {
			fg_color = "white",
			bg_color = "transparent"
		},
		inactive_tab_hover = {
			bg_color = "#44475A",
			fg_color = "white"
		}
	}
}

return config
