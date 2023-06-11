local lsp = require('lsp-zero').preset({})

-- format on save with null-ls
lsp.format_on_save({
  format_opts = {
    async = false,
    timeout_ms = 10000,
  },
  servers = {
    ['null-ls'] = {'javascript', 'typescript', 'lua'},
  }
})

local null_ls = require('null-ls')
local null_opts = lsp.build_options('null-ls', {})

null_ls.setup({
  on_attach = function(client, bufnr)
    null_opts.on_attach(client, bufnr)
  end,
  sources = {
    --- Replace these with the tools you have installed
    null_ls.builtins.formatting.prettier,
    null_ls.builtins.formatting.eslint,
  }
})

-- Mason defaults 
require('mason-lspconfig').setup({
  ensure_installed = { "lua_ls", "tsserver", "emmet_ls", "html", "cssls" }
})

-- lsp defaults
lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({buffer = bufnr})
end)

lsp.setup()

