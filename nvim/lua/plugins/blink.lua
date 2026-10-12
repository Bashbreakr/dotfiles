require('blink.cmp').setup({
  keymap = require('keybinds.blink'),

  appearance = {
    use_nvim_cmp_as_default = true,
    nerd_font_variant = 'mono'
  },
  snippets = {
    preset = "default",
    expand = function(snippet)
      vim.snippet.expand(snippet)
    end,
  },
  completion = {
    menu = {
      border = 'rounded',
      winhighlight = 'Normal:NormalFloat,FloatBorder:FloatBorder,CursorLine:PmenuSel,Search:None',
      scrollbar = false, 
    },
    documentation = {
      auto_show = true,
      window = {
        border = 'rounded',
        winhighlight = 'Normal:NormalFloat,FloatBorder:FloatBorder,CursorLine:PmenuSel,Search:None',
        scrollbar = false,
      },
    },
  },
  sources = {
    default = { 'lsp', 'path', 'snippets', 'buffer' },
  },
})
