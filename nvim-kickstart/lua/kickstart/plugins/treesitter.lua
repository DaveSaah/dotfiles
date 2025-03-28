-- Highlight, edit, and navigate code
-- [[ Configure Treesitter ]] See `:help nvim-treesitter`
return {
  'nvim-treesitter/nvim-treesitter',

  build = ':TSUpdate',
  event = 'VeryLazy',

  config = function()
    ---@diagnostic disable-next-line: missing-fields
    require('nvim-treesitter.configs').setup {
      ensure_installed = {
        'bash',
        'go',
        'html',
        'lua',
        'markdown',
        'vim',
        'vimdoc',
        'haskell',
        'json',
        'yaml',
      },

      -- Autoinstall languages that are not installed
      auto_install = true,

      highlight = {
        enable = true,
      },

      indent = {
        enable = true,
      },
    }
  end,
}
