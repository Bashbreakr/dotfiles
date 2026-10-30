local map = vim.keymap.set

-- write
map("n", "<leader>w", ":w<CR>", { desc = "Save File" })

-- quit
map("n", "<leader>q", ":q<CR>", { desc = "Quit" })

-- Alpha
vim.keymap.set('n', '<leader>a', '<cmd>Alpha<CR>', { desc = 'Open Alpha dashboard' })

-- file browser
map("n", "<leader>f", ":Ex<CR>", { desc = "Browser" })

-- remove search highlight
map("n", "<leader>h", "<cmd>nohlsearch<CR><Esc>", { desc = "un-highlight"})

-- Normal LSP Keymaps
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP Hover" })
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to Definition" })

-- Rust-Specific
vim.keymap.set("n", "<leader>ca", function() vim.cmd.RustLsp('codeAction') end, { desc = "Rust Code Action" })
vim.keymap.set("n", "<leader>em", function() vim.cmd.RustLsp('expandMacro') end, { desc = "Expand Macro" })
