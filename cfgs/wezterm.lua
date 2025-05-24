local wezterm = require("wezterm")
local config = {}
config.color_scheme = "tokyonight"
config.font = wezterm.font("JetBrains Mono")
config.harfbuzz_features = { "calt=0", "liga=0", "clig=0" } -- Ligaturen deaktivieren
return config
