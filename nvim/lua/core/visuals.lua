-- Colorscheme setup

require("nightfox").setup({
    options = {
        styles = {
            comments = "italic",
            keywords = "bold",
            functions = "NONE",
        },
    }
})

vim.cmd("colorscheme carbonfox")


-- Transparency (for WezTerm)
vim.cmd([[
  highlight Normal guibg=NONE ctermbg=NONE
  highlight NormalNC guibg=NONE ctermbg=NONE
  highlight EndOfBuffer guibg=NONE ctermbg=NONE
]])

-- more transparency
vim.cmd([[
  highlight Normal guibg=NONE
  highlight NormalNC guibg=NONE
]])


-- UI visuals
vim.opt.cursorline = true

-- auto completion transparency
vim.api.nvim_set_hl(0, "Pmenu", { bg = "NONE" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
