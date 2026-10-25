require("keybinds")

--###############
--## MONITORS ###
--###############

hl.monitor({
    output = "",
    mode = "preferred",
    position = "auto",
    scale = "auto",
})

--##################
--## MY PROGRAMS ###
--##################

local terminal = "wezterm"
local fileManager = "wezterm -e yazi"
local menu = "fuzzel"
local browser = "librewolf"
local text = "wezterm -e nvim"

--####################
--## LOOK AND FEEL ###
--####################

hl.curve("wind",         { type = "bezier", points = { {0.05, 0.9}, {0.1, 1.05} } })
hl.curve("winIn",        { type = "bezier", points = { {0.1, 1.1}, {0.1, 1.1} } })
hl.curve("winOut",       { type = "bezier", points = { {0.3, -0.3}, {0, 1} } })
hl.curve("liner",        { type = "bezier", points = { {1, 1}, {1, 1} } })
hl.curve("almostLinear", { type = "bezier", points = { {0.5, 0.5}, {0.75, 1.0} } })

hl.animation({ leaf = "windows",     enabled = true, speed = 6,  bezier = "wind" })
hl.animation({ leaf = "windowsIn",   enabled = true, speed = 6,  bezier = "winIn" })
hl.animation({ leaf = "windowsOut",  enabled = true, speed = 5,  bezier = "winOut" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 5,  bezier = "wind" })
hl.animation({ leaf = "border",      enabled = true, speed = 1,  bezier = "liner" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 30, bezier = "liner", style = "loop" })
hl.animation({ leaf = "layers",      enabled = true, speed = 6,  bezier = "wind",  style = "popin 90%" })
hl.animation({ leaf = "layersIn",    enabled = true, speed = 6,  bezier = "winIn", style = "popin 90%" })
hl.animation({ leaf = "layersOut",   enabled = true, speed = 5,  bezier = "winOut", style = "popin 90%" })
hl.animation({ leaf = "workspaces",  enabled = true, speed = 6,  bezier = "wind" })
hl.animation({ leaf = "fadeIn",      enabled = true, speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut",     enabled = true, speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "fade",        enabled = true, speed = 3.03, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayers",  enabled = false })

hl.config({

    general = {
        gaps_in = 5,
        gaps_out = 20,
        border_size = 2,
        col = {
            active_border = { colors = { "rgba(33ccffee)", "rgba(00ff99ee)" }, angle = 45 },
            inactive_border = "rgba(595959aa)",
        },
        resize_on_border = true,
        allow_tearing = false,
        layout = "dwindle",
    },

    decoration = {
        rounding = 8,
        rounding_power = 2,
        active_opacity = 1.0,
        inactive_opacity = 0.8,
        shadow = {
            enabled = true,
            range = 4,
            render_power = 3,
            color = "rgba(1a1a1aee)",
        },
        blur = {
            enabled = false,
            size = 8,
            passes = 3,
            ignore_opacity = true,
            vibrancy = 0.1696,
        },
    },

    animations = {
        enabled = false,
    },

    dwindle = {
        preserve_split = true,
    },

    master = {
        new_status = "master",
    },
    --
    --############
    --## INPUT ###
    --############

    input = {
        kb_layout = "us",
        kb_variant = "dvp",
        kb_model = "",
        kb_options = "caps:super",
        kb_rules = "",
        follow_mouse = 1,
        sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.
        touchpad = {
            natural_scroll = false,
        },
    },

    cursor = {
        no_hardware_cursors = true,
    },

    --##################
    --## KEYBINDINGS ###
    --##################
    
})

hl.on("hyprland.start", function()
    hl.exec_cmd("chmod +x ~/.dotfiles/hypr/scripts/startup-ini.sh && ~/.dotfiles/hypr/scripts/startup-ini.sh")
end)

