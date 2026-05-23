local map = vim.keymap.set
local builtin = require('telescope.builtin')


-- write
map("n", "<leader>w", ":w<CR>", { desc = "Save File" })

-- quit
map("n", "<leader>q", ":q<CR>", { desc = "Quit" })

-- file browser
map("n", "<leader>f", ":Ex<CR>", { desc = "Browser" })

-- telescope
map("n", "<leader>ff", builtin.find_files, { desc = 'Telescope find files' })
map('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
map('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
map('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- markdown preview
map("n", "<leader>mp", "<cmd>MarkdownPreviewToggle<CR>", { desc = "Markdown Preview" })
