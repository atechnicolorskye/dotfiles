-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices
config.initial_cols = 140
config.initial_rows = 40

config.enable_scroll_bar = true

config.color_scheme = 'Spacegray Eighties (Gogh)'
config.font = wezterm.font('IBM Plex Mono')
config.font_size = 15

config.keys = {
    { key = 'LeftArrow', mods = 'CMD|OPT', action = wezterm.action.ActivateTabRelative(-1) },
    { key = 'RightArrow', mods = 'CMD|OPT', action = wezterm.action.ActivateTabRelative(1) },
    { key = 't', mods = 'CMD', action = wezterm.action.SpawnCommandInNewTab {cwd =  '~' }},
}


-- And finally, return the configuration to wezterm
return config
