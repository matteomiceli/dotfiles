require("conform").setup({
  formatters_by_ft = {
    json = { "prettier" },
    python = { "black" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },
    gdscript = { "gdformat" },
  },
  default_format_opts = { lsp_format = "fallback" }
})
