local lsp = require('lsp-zero').preset({
  manage_nvim_cmp = {
    set_extra_mappings = true;
  }
})

-- format on save with null-ls
lsp.format_on_save({
  format_opts = {
    async = false,
    timeout_ms = 10000,
  },
  servers = {
    ['null-ls'] = { "css", "html", "scss", "go", "less", "json", "jsonc", "javascript", "typescript", "typescriptreact", "javascriptreact" },
  }
})

local null_ls = require('null-ls')
local null_opts = lsp.build_options('null-ls', {})

null_ls.setup({
  on_attach = function(client, bufnr)
    null_opts.on_attach(client, bufnr)
  end,
  sources = {
    null_ls.builtins.formatting.prettierd,
    null_ls.builtins.formatting.gofmt,
    null_ls.builtins.code_actions.eslint,
  }
})

-- Mason defaults 
require('mason-lspconfig').setup({
  ensure_installed = { "lua_ls", "tsserver", "emmet_ls", "html", "cssls", "gopls", "eslint" }
})

-- lsp defaults
lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({buffer = bufnr})
end)

lsp.setup()
