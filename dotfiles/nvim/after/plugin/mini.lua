-- Config for various mini.nvim plugins

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
require("mini.diff").setup()
require("mini.files").setup({
  mappings = {
    go_in_plus  = '<Enter>',
    go_out_plus  = '-',
  }
})
require("mini.icons").setup()
-- use 'gS' to automatically split args
require("mini.splitjoin").setup()
