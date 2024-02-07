local lsp_zero = require('lsp-zero')

-- lsp defaults
lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({ buffer = bufnr })
end)

lsp_zero.format_on_save({
  format_opts = {
    async = false,
    timeout_ms = 10000,
  },
  servers = {
    ["gopls"] = { "go" },
    ["tsserver"] = { "typescript", "javascript", "typescriptreact", "javascriptreact" },
  }
})

require('mason').setup()

-- Mason defaults
require('mason-lspconfig').setup({
  ensure_installed = { "lua_ls", "tsserver", "emmet_ls", "html", "cssls", "gopls", "eslint" },
  handlers = {
    lsp_zero.default_setup,
  },
})


-- use <CR> for autocomplete as well as <C-y>
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  -- completion popup borders
  mapping = cmp.mapping.preset.insert({
    ['<CR>'] = cmp.mapping.confirm({ select = false }),
    ['<Tab>'] = cmp_action.luasnip_supertab(),
    ['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
  }),
  -- completion popup borders
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  }
})

lsp_zero.setup()
