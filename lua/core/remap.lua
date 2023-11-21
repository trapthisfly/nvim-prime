vim.g.mapleader = ' '
local set = vim.keymap.set

-- Navigation 
set('n', '<leader>pv', ':Ex<cr>', { desc = 'File View', silent = true })
set('i', 'jj', '<Esc>', { desc = "Exit Insert mode", silent = true })


-- Telescope
local builtin = require('telescope.builtin')
set('n', '<leader>ff', builtin.find_files, { desc = "Find Files", silent = true})
set('n', '<leader>fg', builtin.git_files, { desc = "Find Git Files", silent = true })
set('n', '<leader>fs', builtin.grep_string, { desc = "Find String", silent = true })
