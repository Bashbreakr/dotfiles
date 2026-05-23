-- 1. Bootstrap lazy.nvim (ensures it installs itself if missing)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- 2. Setup plugins
require("lazy").setup({
  -- Colorschemes
  "nyoom-engineering/oxocarbon.nvim",
  "EdenEast/nightfox.nvim",
  "nvim-mini/mini.icons",

    -- Treesitter
    {
      "nvim-treesitter/nvim-treesitter",
      branch = "master",
      build = ":TSUpdate",
    },

    -- markdown
    {
      "iamcco/markdown-preview.nvim",
      ft = { "markdown" },
      build = "cd app && npm install"
    },

    {
      "MeanderingProgrammer/render-markdown.nvim",
      ft = { "markdown" },
      dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-mini/mini.icons",
      },
    },

  -- lspconfig
  "neovim/nvim-lspconfig",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "mfussenegger/nvim-jdtls",
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  "L3MON4D3/LuaSnip",
  "windwp/nvim-autopairs",
  "onsails/lspkind.nvim",

  -- discord
  "vyfor/cord.nvim",

  -- telescope
  {
      "nvim-telescope/telescope.nvim",
      dependencies = {
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons",
          {
              "nvim-telescope/telescope-fzf-native.nvim",
              build = "make",
           },
      },
   },
   
   -- startup
   {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        math.randomseed(os.time())

        local choice = math.random(1, 7)
      require("plugins.alpha.alpha" .. choice)
    end
  }

  
}, {
    lockfile = vim.fn.stdpath("data") .. "/lazy-lock.json",
})

require("plugins.cmp")
require("plugins.treesitter")
require("plugins.telescope")
require("plugins.autopairs")
require("plugins.discord")
require("plugins.markdown")
