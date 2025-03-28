return {
  ------------------------------------------------
  -- INSTALLATIONS
  ------------------------------------------------

  -- wakatime
  {
    "wakatime/vim-wakatime",
    event = { "VimEnter" },
  },

  -- catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    event = { "VimEnter" },
  },

  -- UNDO tree
  {
    "mbbill/undotree",
    event = { "VeryLazy" },
  },

  -- transparency
  {
    "xiyaowong/transparent.nvim",
    event = { "VimEnter" },
  },

  -- rust toolkit
  -- {
  --   "mrcjkb/rustaceanvim",
  --   version = "^3", -- Recommended
  --   ft = { "rust" },
  --   event = { "VeryLazy" },
  -- },

  -- context
  {
    "nvim-treesitter/nvim-treesitter-context",
    event = { "VeryLazy" },
  },

  -- flutter
  {
    "nvim-flutter/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional for vim.ui.select
    },
    config = true,
  },
  ------------------------------------------------
  -- CONFIGURATIONS
  ------------------------------------------------

  -- colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },

  -- lualine theme
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      theme = "catppuccin-mocha",
    },
  },

  -- notification
  {
    "rcarriga/nvim-notify",
    opts = {
      background_colour = "#000000",
    },
  },

  {
    "goolord/alpha-nvim",
    opts = function()
      local dashboard = require("alpha.themes.dashboard")
      local logo = [[
888    888                                 888
888    888                                 888
888    888                                 888
8888888888  .d88b.  .d8888b   .d88b.   .d88888
888    888 d8P  Y8b 88K      d8P  Y8b d88" 888
888    888 88888888 "Y8888b. 88888888 888  888
888    888 Y8b.          X88 Y8b.     Y88b 888
888    888  "Y8888   88888P'  "Y8888   "Y88888
    ]]
      dashboard.section.header.val = vim.split(logo, "\n")
    end,
  },
}
