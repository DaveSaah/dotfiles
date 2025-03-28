return {
  'catppuccin/nvim',
  event = 'VimEnter',
  priority = 1000,
  config = function()
    -- Load the colorscheme here
    vim.cmd.colorscheme 'catppuccin-mocha'

    -- You can configure highlights by doing something like
    vim.cmd.hi 'Comment gui=none'
  end,
}
