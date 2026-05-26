local map = vim.keymap.set

-- write
map("n", "<leader>w", ":w<CR>", { desc = "Save File" })

-- quit
map("n", "<leader>q", ":q<CR>", { desc = "Quit" })

-- file browser
map("n", "<leader>f", ":Ex<CR>", { desc = "Browser" })
