local assign = vim.keymap.set

-- See `:help telescope.builtin`
local builtin = require 'telescope.builtin'
assign('n', '<leader>sh', builtin.help_tags, { desc = '[H]elp' })
assign('n', '<leader>sk', builtin.keymaps, { desc = '[K]eymaps' })
assign('n', '<leader>sf', builtin.find_files, { desc = '[F]iles' })
assign('n', '<leader>ss', builtin.builtin, { desc = '[S]elect Telescope' })
assign('n', '<leader>sw', builtin.grep_string, { desc = '[W]ord' })
assign('n', '<leader>sg', builtin.live_grep, { desc = '[G]rep' })
assign('n', '<leader>sd', builtin.diagnostics, { desc = '[D]iagnostics' })
assign('n', '<leader>s.', builtin.oldfiles, { desc = 'Recent Files ("." for repeat)' })
assign('n', '<leader><leader>', builtin.buffers, { desc = '[ ] Find existing buffers' })

-- Also possible to pass additional configuration options.
--  See `:help telescope.builtin.live_grep()` for information about particular keys
assign('n', '<leader>s/', function()
  builtin.live_grep {
    grep_open_files = true,
    prompt_title = 'Live Grep in Open Files',
  }
end, { desc = '[/] in Open Files' })

-- Shortcut for searching your neovim configuration files
assign('n', '<leader>sn', function()
  builtin.find_files { cwd = vim.fn.stdpath 'config' }
end, { desc = '[N]eovim files' })
