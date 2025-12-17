-- Config for various mini.nvim plugins

-- completion
require("mini.completion").setup()

-- Remap comp popup next and previous
-- https://nvim-mini.org/mini.nvim/doc/mini-completion.html
local imap_expr = function(lhs, rhs)
  vim.keymap.set('i', lhs, rhs, { expr = true })
end
imap_expr('<Tab>', [[pumvisible() ? "\<C-n>" : "\<Tab>"]])
imap_expr('<S-Tab>', [[pumvisible() ? "\<C-p>" : "\<S-Tab>"]])
imap_expr('<CR>', [[pumvisible() ? "\<C-y>" : "\<CR>"]])

-- cmds to launch picker in lua/keys.lua
require("mini.pick").setup({
  mappings = {
    toggle_info    = '<C-n>',
    toggle_preview = '<C-p>',
    move_down      = '<Tab>',
    move_up        = '<S-Tab>',
    scroll_down    = '<C-j>',
    scroll_up      = '<C-k>',
  },
})
require("mini.icons").setup()
require("mini.snippets").setup()
-- use 'gS' to automatically split args
require("mini.splitjoin").setup()
