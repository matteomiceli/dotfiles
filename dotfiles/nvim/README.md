# NeoVim config

## File Structure

```
~/.config/nvim

├── init.lua
├── after
│   └── plugin
│       ├── lsp.lua
│       ├── lualine.lua
│       ├── mini.lua
│       ├── theme.lua
│       ├── copilot.lua
│       └── treesitter.lua
└── lua
    ├── keys
    ├── plugins
    └── set
```

- **init.lua:** Config entry point.
- **after:** Contains config and initialization for plugins.
- **lua:** Editor preferences, keymaps, and plugin setup.

### Setup

1. Copy the contents of this folder into `~/.conig/nvim`
2. Launch `nvim`
3. Run `:Lazy` and sync plugins.

### Quick Reference

_`<leader>` is mapped to `<space>` by default._

#### Project navigation:

- `<leader>oo` — [o]pen file picker
- `<leader>fg` — [f]ind [g]it-tracked files
- `<leader>ff` — [f]ind all [f]iles
- `<leader>fs` — [f]ind [s]tring

#### Code navigation:

Normal mode

- `gr` — [g]oto [r]eferences
- `gd` — [g]oto [d]efinition
- `gl` — open dia[g]nostics f[l]oating window
- `F2` — rename variable
- `F4` — code actions (lint suggestions, etc.)
