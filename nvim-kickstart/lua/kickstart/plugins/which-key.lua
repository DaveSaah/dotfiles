-- Useful plugin to show you pending keybinds.
return {
  'folke/which-key.nvim',

  event = 'VeryLazy', -- Sets the loading event to 'VimEnter'

  config = function() -- This is the function that runs, AFTER loading
    local wk = require 'which-key'
    -- Document existing key chains
    wk.add {
      { '<leader>c', group = '[C]ode' },
      { '<leader>d', group = '[D]ocument' },
      { '<leader>r', group = '[R]ename' },
      { '<leader>s', group = '[S]earch' },
      { '<leader>w', group = '[W]orkspace' },
      { '<leader>b', group = '[B]uffer' },
    }
  end,
}
