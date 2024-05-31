-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

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
  cursorline = true,
  incsearch = true,
  fillchars = { eob = " " },
  conceallevel = 3,
  concealcursor = "c",
}

set_options(vim.o, options_global)
set_options(vim.opt, opts)
