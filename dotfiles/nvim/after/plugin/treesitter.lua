local treesitter = require('nvim-treesitter')
treesitter.setup({
  -- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
  install_dir = vim.fn.stdpath('data') .. '/site',
  auto_install = true,
  sync_install = false,
  indent = { enable = true },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
})
treesitter.install({
  "html",
  "markdown",
  "python",
  "jsdoc",
  "json",
  "css",
  "javascript",
  "tsx",
  "typescript",
  "go",
  "c",
  "lua",
  "vim",
  "vimdoc",
  "query"
})

-- Start treesitter when file loaded
vim.api.nvim_create_autocmd("FileType", {
  callback = function(args)
    local bufnr = args.buf
    -- Start Treesitter for the buffer if a parser is available
    pcall(vim.treesitter.start, bufnr)
    -- Use treesitter for indentation
    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
  end,
})
