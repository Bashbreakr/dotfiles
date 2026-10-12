local cmp = require("cmp")
local luasnip = require("luasnip")
local autopairs = require("nvim-autopairs.completion.cmp")
local lspkind = require("lspkind")

cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },

    mapping = cmp.mapping.preset.insert({
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
    }),

    window = {
        completion = {
            max_height = 8,
            max_width = 8,
            side_padding = 0,
            border = "rounded",
            winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Cursorline:PmenuSel,Search:None",
        },
        documentation = {
            max_height = 10,
            max_width = 60,
            border = "rounded",
            winhighlight = "Normal:Pmenu,FloatBorder:FloatBorder",
        },
    },

    sorting = {
      priority_weight = 2,
      comparators = {
        require("cmp.config.compare").offset,
        require("cmp.config.compare").exact,
        require("cmp.config.compare").score,
        require("cmp.config.compare").recently_used,
        require("cmp.config.compare").kind,
        require("cmp.config.compare").sort_text,
        require("cmp.config.compare").length,
        require("cmp.config.compare").order,
      },
    },

    formatting = {
      format = require("lspkind").cmp_format({
        mode = "symbol_text",
        maxwidth = 17,
        ellipsis_char = "...",
      }),
    },

    experimental = {
        ghost_text = true,
    },

    sources = {
        { name = "nvim_lsp" },
        { name = "luasnip" },
    },
})

cmp.event:on("confirm_done", autopairs.on_confirm_done())
