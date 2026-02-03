-- Window and tab management
vim.keymap.set("n", "<leader>nt", ':tabe <Enter>') -- new tab
vim.keymap.set("n", "<leader>q", ':q<Enter>')      -- close

-- Terminal mode
vim.keymap.set("t", "<ESC>", '<C-\\><C-n>')

-- Diagnostics
vim.keymap.set("n", "gl", function() vim.diagnostic.open_float() end) -- diagnostics

-- Picker
vim.keymap.set('n', '<leader>ff', function() Snacks.picker.files() end)
vim.keymap.set('n', '<leader>fg', function() Snacks.picker.git_files() end)
vim.keymap.set('n', '<leader>fs', function() Snacks.picker.grep() end)
vim.keymap.set('n', '<leader>gl', function() Snacks.picker.diagnostics() end)
  -- <M-i> show ignored files
  -- <M-h> show hidden files

-- Explorer
vim.keymap.set("n", "<leader>e", function() Snacks.picker.explorer() end)

-- formatting
vim.keymap.set("n", "<leader>fm", function()
  require("conform").format()
end)
