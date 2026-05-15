local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- header (clean + subtle personality)
dashboard.section.header.val = {
    " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⡔⠠⢤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
    " ⡴⠒⠒⠒⠒⠒⠶⠦⠄⢹⣄⠀⠀⠑⠄⣀⡠⠤⠴⠒⠒⠒⠀⠀ ",
    " ⢇⠀⠀⠀⠀⠀⠀⠐⠋⠀⠒⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠀ ",
    " ⠈⢆⠀⠀⠀⠀⡤⠤⣄⠀⠀⠀⠀⡤⠤⢄⠀⠀⠀⠀⠀⣠⠃⠀ ",
    " ⠀⡀⠑⢄⡀⡜⠀⡜⠉⡆⠀⠀⠀⡎⠙⡄⠳⡀⢀⣀⣜⠁⠀⠀ ",
    " ⠀⠹⣍⠑⠀⡇⠀⢣⣰⠁⠀⠀⠀⠱⣠⠃⠀⡇⠁⣠⠞⠀⠀⠀ ",
    " ⠀⠀⠀⡇⠔⣦⠀⠀⠀⠈⣉⣀⡀⠀⠀⠰⠶⠖⠘⢧⠀⠀⠀⠀ ",
    " ⠀⠀⠰⠤⠐⠤⣀⡀⠀⠈⠑⣄⡁⠀⡀⣀⠴⠒⠀⠒⠃⠀⠀⠀ ",
    " ⠀⠀⠀⠀⠀⠀⠘⢯⡉⠁⠀⠀⠀⠀⠉⢆⠀⠀⠀⠀⠀⠀⠀⠀ ",
    " ⠀⠀⠀⠀⠀⠀⢀⣞⡄⠀⠀⠀⠀⠀⠀⠈⡆⠀⠀⠀⠀⠀⠀⠀ ",
}

-- buttons (unchanged, just cleaner spacing)
dashboard.section.buttons.val = {
  dashboard.button("e", "  new file", ":ene <bar> startinsert<cr>"),
  dashboard.button("f", "  find file", ":Telescope find_files<cr>"),
  dashboard.button("r", "  recent files", ":Telescope oldfiles<cr>"),
  dashboard.button("g", "  live grep", ":Telescope live_grep<cr>"),
  dashboard.button("c", "  config", ":e ~/.config/nvim/init.lua<cr>"),
  dashboard.button("q", "  quit", ":qa<cr>"),
}

-- footer (more personality, still subtle)
dashboard.section.footer.val = {
    os.date(" %Y-%m-%d   %H:%M")
}

-- layout (better spacing balance)
dashboard.config.layout = {
  { type = "padding", val = 3 },
  dashboard.section.header,
  { type = "padding", val = 3 },
  dashboard.section.buttons,
  { type = "padding", val = 2 },
  dashboard.section.footer,
}

-- optional: center everything
dashboard.config.opts.noautocmd = true

alpha.setup(dashboard.config)
