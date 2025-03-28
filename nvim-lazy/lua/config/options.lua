-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

local set_options = function(locality, options)
  for key, value in pairs(options) do
    locality[key] = value
  end
end

local options_global = {
  hlsearch = false,
}

set_options(vim.o, options_global)

opt.shiftwidth = 2
opt.tabstop = 2
opt.showmatch = true
opt.wrap = true
opt.cursorline = true
opt.incsearch = true
opt.fillchars = { eob = " " }

vim.g.livepreview_cursorhold_recompile = 0
