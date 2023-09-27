local wezterm = require 'wezterm'
local config = {}
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- config goes here
config.window_background_opacity = 0.9
config.color_scheme = 'Pnevma'
-- config.color_scheme = 'Everforest Dark (Gogh)'
config.font =
    wezterm.font('JetBrains Mono', { weight = 'Bold' })
config.font_size = 15.0
return config
