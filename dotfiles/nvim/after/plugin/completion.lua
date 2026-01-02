require('blink.cmp').setup(
  {
    completion = {
      documentation = {
        auto_show = true,
      },
    },

    sources = {
      -- the 'snippets' source introduces a race condition causing dropped keys
      default = {'lsp', 'path', 'buffer'},
    },

    keymap = {
      -- https://www.reddit.com/r/neovim/comments/1hfotru/nvimcmp_super_tab_in_blink/
      preset = 'enter',
      ["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
      ["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
    }
  })
