-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local assign = vim.keymap.set
local Util = require("lazyvim.util")

assign("n", "<C-h>", function()
  vim.cmd("Alpha")
end)

assign("n", "[c", function()
  require("treesitter-context").go_to_context()
end, { silent = true })

assign("n", "<F5>", function()
  vim.cmd("UndotreeToggle")
  vim.cmd("UndotreeFocus")
end, { silent = true })

assign("n", "<F7>", function()
  Util.terminal()
end, { silent = true })
