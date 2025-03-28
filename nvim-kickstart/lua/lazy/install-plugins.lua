require('lazy').setup {
  defaults = {
    lazy = true,
  },
  -- LSP Configuration & Plugins
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Automatically install LSPs and related tools to stdpath for neovim
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      'WhoIsSethDaniel/mason-tool-installer.nvim',

      -- Useful status updates for LSP.
      -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
      { 'j-hui/fidget.nvim', opts = {} },
    },

    --  This function gets run when an LSP attaches to a particular buffer.
    config = function()
      require 'autocmd.lsp-attach'
      require 'lazy.mason'
    end,
  },

  -- Add defined plugins
  require 'kickstart.plugins.init',
  require 'custom.plugins.init',
}
