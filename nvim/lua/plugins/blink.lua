require('blink.cmp').setup({
  keymap = require('keybinds.blink'),

  appearance = {
    use_nvim_cmp_as_default = true,
    nerd_font_variant = 'mono'
  },
  completion = {
    menu = {
      border = 'rounded',
      winhighlight = 'Normal:NormalFloat,FloatBorder:FloatBorder,CursorLine:PmenuSel,Search:None',
      -- FIXED: scrollbar lives right here, not under a "draw" section
      scrollbar = false, 
    },
    documentation = {
      auto_show = true,
      window = {
        border = 'rounded',
        winhighlight = 'Normal:NormalFloat,FloatBorder:FloatBorder,CursorLine:PmenuSel,Search:None',
        -- FIXED: scrollbar lives right here too
        scrollbar = false,
      },
    },
  },
  sources = {
    default = { 'lsp', 'path', 'snippets', 'buffer' },
  },
})
