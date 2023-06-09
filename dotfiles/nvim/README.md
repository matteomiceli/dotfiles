# NeoVim config

## File Structure
```
~/.config/nvim

├── init.lua
├── after
│   └── plugin
│       ├── lsp.lua
│       ├── telescope.lua
│       └── treesitter.lua
├── lua
│   ├── keys
│   ├── plugins
│   └── set
├── plugin
│   └── packer_compiled.lua
└── README.md
```

- **init.lua:** Config entry point.
- **after:** Contains custom config and initialization for plugins.
- **lua:** Editor preferences, keymaps, and plugin setup.
- **plugin:** Packer's compiled config. 
