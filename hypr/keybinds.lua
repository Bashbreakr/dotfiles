local mainMod = "SUPER"

local terminal = "wezterm"
local fileManager = "wezterm -e yazi"
local menu = "fuzzel"
local browser = "librewolf"
local text = "wezterm -e nvim"

-- Applications
hl.bind(mainMod .. " + T", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + F", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(browser))
hl.bind(mainMod .. " + N", hl.dsp.exec_cmd(text))

-- Stuff
hl.bind("PRINT", hl.dsp.exec_cmd("hyprshot -m output"))

hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + C", hl.dsp.window.close())
hl.bind(mainMod .. " + SHIFT + R", hl.dsp.exec_cmd("systemctl reboot"))

hl.bind(mainMod .. " + O", hl.dsp.exec_cmd("~/.dotfiles/hypr/scripts/clock-overlay.sh"))
hl.bind(mainMod .. " + O", hl.dsp.exec_cmd("~/.dotfiles/hypr/scripts/close-clock-overlay.sh"), { release = true })
hl.bind(mainMod .. " + Z", hl.dsp.exec_cmd("~/.useful_stuff/script_launcher.sh"))

-- rofi stuff

-- Move focus with mainMod + nvim keys
hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
hl.bind(mainMod .. " + ampersand", hl.dsp.focus({ workspace = 1 }))
hl.bind(mainMod .. " + bracketleft", hl.dsp.focus({ workspace = 2 }))
hl.bind(mainMod .. " + braceleft", hl.dsp.focus({ workspace = 3 }))
hl.bind(mainMod .. " + braceright", hl.dsp.focus({ workspace = 4 }))
hl.bind(mainMod .. " + parenleft", hl.dsp.focus({ workspace = 5 }))
hl.bind(mainMod .. " + equal", hl.dsp.focus({ workspace = 6 }))
hl.bind(mainMod .. " + asterisk", hl.dsp.focus({ workspace = 7 }))
hl.bind(mainMod .. " + parenright", hl.dsp.focus({ workspace = 8 }))
hl.bind(mainMod .. " + plus", hl.dsp.focus({ workspace = 9 }))
hl.bind(mainMod .. " + bracketright", hl.dsp.focus({ workspace = 10 }))

-- Move active window to a workspace with mainMod + SHIFT + [0-9]
hl.bind(mainMod .. " + SHIFT + ampersand", hl.dsp.window.move({ workspace = 1 }))
hl.bind(mainMod .. " + SHIFT + bracketleft", hl.dsp.window.move({ workspace = 2 }))
hl.bind(mainMod .. " + SHIFT + braceleft", hl.dsp.window.move({ workspace = 3 }))
hl.bind(mainMod .. " + SHIFT + braceright", hl.dsp.window.move({ workspace = 4 }))
hl.bind(mainMod .. " + SHIFT + parenleft", hl.dsp.window.move({ workspace = 5 }))
hl.bind(mainMod .. " + SHIFT + equal", hl.dsp.window.move({ workspace = 6 }))
hl.bind(mainMod .. " + SHIFT + asterisk", hl.dsp.window.move({ workspace = 7 }))
hl.bind(mainMod .. " + SHIFT + parenright", hl.dsp.window.move({ workspace = 8 }))
hl.bind(mainMod .. " + SHIFT + plus", hl.dsp.window.move({ workspace = 9 }))
hl.bind(mainMod .. " + SHIFT + bracketright", hl.dsp.window.move({ workspace = 10 }))

-- Example special workspace (scratchpad)
hl.bind(mainMod .. " + W", hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + W", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag())
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize())

-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true, repeating = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("~/.useful_stuff/brighter.sh"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("~/.useful_stuff/darker.sh"), { locked = true, repeating = true })
