local assign = vim.keymap.set
local run = vim.cmd

assign('n', '<leader>e', function()
  run 'Neotree toggle'
end, { desc = 'See filetree' })
