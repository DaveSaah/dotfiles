return {
  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', event = 'VeryLazy', opts = {} },

  require 'kickstart.plugins.todo-comments',
  require 'kickstart.plugins.mini',
  require 'kickstart.plugins.indent_line',
  require 'kickstart.plugins.treesitter',
  require 'kickstart.plugins.autocomplete',
  require 'kickstart.plugins.autoformat',
  require 'kickstart.plugins.gitsigns',
  require 'kickstart.plugins.which-key',
  require 'kickstart.plugins.telescope',
}
