local wezterm = require 'wezterm';

return {
  window_background_opacity = 0.4,
  enable_tab_bar = false,

  -- Optional: remove background entirely (no fallback color)
  colors = {
    background = "#0A0F1F",
  },

  -- Needed on Wayland sometimes for proper transparency
  enable_wayland = true,
}
