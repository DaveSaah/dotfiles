return {
  ------------------------------------------------
  -- INSTALLATIONS
  ------------------------------------------------

  -- wakatime
  {
    "wakatime/vim-wakatime",
    event = { "VimEnter" },
  },

  -- UNDO tree
  {
    "mbbill/undotree",
    event = { "VeryLazy" },
  },

  -- rust toolkit
  {
    "mrcjkb/rustaceanvim",
    version = "^4",
    ft = { "rust" },
    event = { "VeryLazy" },
  },

  -- context
  {
    "nvim-treesitter/nvim-treesitter-context",
    event = { "VeryLazy" },
  },

  {
    "xiyaowong/transparent.nvim",
    event = { "VimEnter" },
  },

  {
    "rose-pine/neovim",
    name = "rose-pine",
    event = { "VeryLazy" },
  },
  ------------------------------------------------
  -- CONFIGURATIONS
  ------------------------------------------------

  -- colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
  },

  -- lualine theme
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      theme = "rose-pine",
    },
  },

  {
    "goolord/alpha-nvim",
    opts = function()
      local dashboard = require("alpha.themes.dashboard")
      local logo = [[Welcome, Bytes]]
      dashboard.section.header.val = vim.split(logo, "\n")
    end,
  },
}
