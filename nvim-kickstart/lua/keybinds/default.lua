local assign = vim.keymap.set
local run = vim.cmd

assign('n', '<Esc>', '<cmd>nohlsearch<CR>')
assign('n', '<C-s>', '<cmd>:w<CR>')
assign('v', '<C-s>', '<ESC><cmd>:w<CR>')
assign('i', '<C-s>', '<ESC><cmd>:w<CR>')

assign('n', '[c', function()
  require('treesitter-context').go_to_context()
end, { silent = true })

assign('n', '<F5>', function()
  run 'UndotreeToggle'
  run 'UndotreeFocus'
end, { silent = true })

-- Diagnostic keymaps
assign('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
assign('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
assign('n', '<leader>ce', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })

-- TIP: Disable arrow keys in normal mode
assign('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
assign('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
assign('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
assign('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- buffers
assign('n', '<leader>bd', '<cmd>bdelete<CR>', { desc = '[D]elete current buffer' })
assign('n', '<leader>`', '<cmd>bprevious<CR>', { desc = 'Switch to previous buffer' })

-- lazy
assign('n', '<leader>l', '<cmd>Lazy<CR>', { desc = 'Lazy Manager' })

-- mason
assign('n', '<leader>cm', '<cmd>Mason<CR>', { desc = 'Mason Manager' })
