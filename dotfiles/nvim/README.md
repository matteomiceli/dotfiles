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
└── README.md
```

- **init.lua:** Config entry point.
- **after:** Contains custom config and initialization for plugins.
- **lua:** Editor preferences, keymaps, and plugin setup.


### Setup

1. Copy the contents of this folder into `~/.conig/nvim`
2. Ensure packer is installed by running.
      ```
      git clone --depth 1 https://github.com/wbthomason/packer.nvim\ ~/.local/share/nvim/site/pack/packer/start/packer.nvim
      ```
3. Open `init.lua` in nvim and run source the file with `:so`.
4. Run `:PackerSync` to install plugins.
