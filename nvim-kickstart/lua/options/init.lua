local set_options = function(locality, options)
  for key, value in pairs(options) do
    locality[key] = value
  end
end

local options_global = {
  hlsearch = false,
}

local opts = {
  shiftwidth = 2,
  tabstop = 2,
  showmatch = true,
  wrap = true,
  incsearch = true,
  fillchars = { eob = ' ' },
  conceallevel = 3,
  -- Make line numbers default
  number = true,

  -- add relative line numbers
  relativenumber = true,

  -- Enable mouse mode, can be useful for resizing splits for example!
  mouse = '',

  -- Don't show the mode, since it's already in status line
  showmode = false,

  -- Sync clipboard between OS and Neovim.
  --  Remove this option if you want your OS clipboard to remain independent.
  --  See `:help 'clipboard'`
  clipboard = 'unnamedplus',

  -- Enable break indent
  breakindent = true,

  -- Save undo history
  undofile = true,

  -- Case-insensitive searching UNLESS \C or capital in search
  ignorecase = true,
  smartcase = true,

  -- Keep signcolumn on by default
  signcolumn = 'yes',

  -- Decrease update time
  updatetime = 250,
  timeoutlen = 300,

  -- Configure how new splits should be opened
  splitright = true,
  splitbelow = true,

  -- Sets how neovim will display certain whitespace in the editor.
  --  See `:help 'list'`
  --  and `:help 'listchars'`
  list = false,
  -- listchars = { tab = '» ', trail = '·', nbsp = '␣' },

  -- Preview substitutions live, as you type!
  inccommand = 'split',

  -- Show which line your cursor is on
  cursorline = true,

  -- Minimal number of screen lines to keep above and below the cursor.
  scrolloff = 10,

  -- [[ Basic Keymaps ]]
  --  See `:help vim.keymap.set()`

  -- Set highlight on search, but clear on pressing <Esc> in normal mode
  hlsearch = true,

  -- set colorcolumn
  colorcolumn = '80',
}

set_options(vim.o, options_global)
set_options(vim.opt, opts)

-- Set <space> as the leader key
-- Set <,> as localleader
vim.g.mapleader = ' '
vim.g.maplocalleader = ','
