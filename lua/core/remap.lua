local set = vim.keymap.set

-- Navigation
set("n", "<leader>pv", ":Ex<cr>", { desc = "File View", silent = true })
set("i", "jj", "<Esc>", { desc = "Exit Insert mode", silent = true })


local section = {
  f = { desc = "Find Files" },
}

-- Telescope
local builtin = require("telescope.builtin")
set('n', '<leader>f',  section.f.desc, {})
set("n", "<leader>ff", builtin.find_files, { desc = "Find Files", silent = true })
set("n", "<leader>fg", builtin.git_files, { desc = "Find Git Files", silent = true })
set('n', '<leader>fs', builtin.live_grep, { desc = "Find String in cwd", silent = true })
set('n', '<leader>fc', builtin.grep_string, { desc = "Find string under cursor in cwd" })

-- Undotree
set("n", "<leader>u", ":UndotreeToggle<cr>", { desc = "Undotree", silent = true })

-- fugitive
set('n', '<leader>gs', vim.cmd.Git, { desc = "Git Status", silent = true })
