-- File explorer bindings
vim.keymap.set("n", "<leader>e", ':Ex <Enter>')
vim.keymap.set("n", "<leader>o", ':Vex! <Enter>')

-- Window and tab management
vim.keymap.set("n", "<leader>nt", ':tabe <Enter>') -- new tab
vim.keymap.set("n", "<leader>q", ':q<Enter>')      -- close

-- Terminal mode
vim.keymap.set("t", "<ESC>", '<C-\\><C-n>')

-- Diagnostics
vim.keymap.set("n", "gl", function() vim.diagnostic.open_float() end)  -- diagnostics
