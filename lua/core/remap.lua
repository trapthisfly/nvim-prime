local set = vim.keymap.set
set("i", "jj", "<Esc>", { desc = "Exit Insert mode", silent = true })

local section = {
	-- f = { desc = "ind Files" },
	g = { desc = "Comment" },
	gc = { desc = "Line Comment" },
	gb = { desc = "Block Comment" },
	e = { desc = "Files" },
}

-- Telescope
-- local builtin = require("telescope.builtin")
-- set("n", "<leader>f", section.f.desc, { silent = true })
-- set("n", "<leader>ff", builtin.find_files, { desc = "Find Files", silent = true })
-- set("n", "<leader>fg", builtin.git_files, { desc = "Find Git Files", silent = true })
-- set("n", "<leader>fs", builtin.live_grep, { desc = "Find String in cwd", silent = true })
-- set("n", "<leader>fc", builtin.grep_string, { desc = "Find string under cursor in cwd" })

-- Undotree
set("n", "<leader>u", ":UndotreeToggle<cr>", { desc = "Undotree", silent = true })

-- fugitive
set("n", "<leader>gs", vim.cmd.Git, { desc = "Git Status", silent = true })

-- comment
set("n", "<leader>g", section.g.desc, {})
set("n", "<leader>gc", section.gc.desc, {})
set("n", "<leader>gb", section.gb.desc, {})

set("n", "<leader>e", section.e.desc, { silent = true })
-- oil fileview
set("n", "<leader>eo", ":Oil --float<cr>", { desc = "Files", silent = true })

-- nvim-tree
set("n", "<leader>ee", ":NvimTreeToggle<cr>", { desc = "Tree View", silent = true })

-- formatting
set({ "n", "v" }, "<leader>m", function()
	require("conform").format({
		lsp_fallback = true,
		async = false,
		timeout_ms = 5000,
	})
end, { desc = "Format", silent = true })

-- linting
set("n", "<leader>l", function()
	require("lint").lint_try()
end, { desc = "Trigger Linting", silent = true })

-- which-key mappings
local wk = require("which-key")
wk.register({
	f = {
		name = "Files",
		f = { "<cmd>Telescope find_files<cr>", "Find File" },
		g = { "<cmd>Telescope git_files<cr>", "Find git files" },
		s = { "<cmd>Telescope live_grep<cr>", "Find string in cwd" },
		c = { "<cmd>Telescope grep_string<cr>", "Find string under cursor in cwd" },
		o = { "<cmd>Telescope oldfiles<cr>", "Old Files" },
	},
	e = {
		name = "Files",
		e = { "<cmd>NvimTreeToggle<cr>", "Tree view" },
		o = { "<cmd>Oil --float<cr>", "File view" },
	},
}, { prefix = "<leader>", silent = true })
