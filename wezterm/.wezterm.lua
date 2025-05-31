local wezterm = require("wezterm")
local config = {}
config.color_scheme = "tokyonight"
config.font = wezterm.font("JetBrains Mono")
config.harfbuzz_features = { "calt=0", "liga=0", "clig=0" } -- Ligaturen deaktivieren
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}
return config
