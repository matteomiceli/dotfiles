-- Config for snacks.nvim plugins

require("snacks").setup({
  picker = {
    enabled = true,
    win = {
      input = {
        keys = {
          ["<S-Tab>"] = { "list_up", mode = { "i", "n" } },
          ["<Tab>"] = { "list_down", mode = { "i", "n" } },
          ["<C-p>"] = { "history_back", mode = { "i", "n" } },
          ["<C-n>"] = { "history_forward", mode = { "i", "n" } },
        }
      }
    },
    sources = {
      files = { hidden = true },
      grep = { hidden = true },
      explorer = { hidden = true }
    },
  },
  explorer = { enabled = true }
  -- find keybinds in lua/keys.lua
})
