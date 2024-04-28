-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local assign = vim.keymap.set
local run = vim.cmd

assign("n", "<C-h>", function()
  run("Alpha")
end)

assign("n", "<F5>", function()
  run("UndotreeToggle")
  run("UndotreeFocus")
end, { silent = true })
