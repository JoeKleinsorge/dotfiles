local wezterm = require 'wezterm'
local config = {}
if wezterm.config_builder then
 config = wezterm.config_builder()
end
 config.color_scheme_dirs = { '~/git/dotfiles/terminal/wezterm/themes' }
 config.window_background_opacity = 0.94
 -- config.color_scheme = 'Tiniri Dark'
 config.color_scheme = 'Pnevma'
 config.font =
     wezterm.font('JetBrains Mono', { weight = 'Bold' })
 config.font_size = 16.0
 return config

