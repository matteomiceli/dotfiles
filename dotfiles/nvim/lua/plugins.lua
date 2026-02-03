return {
  -- editor theme
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
  },

  -- mini.nvim
  {
    'nvim-mini/mini.nvim',
    version = '*'
  },

  -- snacks.nvim
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
  },

  -- code painting
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    branch = "main"
  },

  -- lsp support
  {
    'williamboman/mason-lspconfig.nvim',
    opts = {},
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
  },

  -- completion
  {
    'saghen/blink.cmp',
    version = '1.*',
  },

  -- formatting
  {
    'stevearc/conform.nvim',
  },

  -- status line
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },

  -- copilot
  -- {'zbirenbaum/copilot.lua'}
}
