-- Config for snacks.nvim plugins

require("snacks").setup({
  picker = {
    enabled = true,
    win = {
      input = {
        keys = {
          ["<S-Tab>"] = { "list_up", mode = { "i", "n" } },
          ["<Tab>"] = { "list_down", mode = { "i", "n" } },
        }
      }
    }
  },
  explorer = { enabled = true }
  -- find setup in keys
})
