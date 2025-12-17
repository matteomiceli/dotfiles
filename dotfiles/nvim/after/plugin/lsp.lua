-- Mason defaults
require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = {
    "lua_ls",
    "gopls",
    "ts_ls",
    "pyright",
    "svelte",
    "html",
    "cssls",
    "emmet_ls",
    "eslint"
  }
})


-- Nvim default keymaps
--   grn - rename
--   grr - goto references
--   gra - get codeactions
--   grt - goto type definition

-- Run the following when LSP attaches to buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('lsp-attach', { clear = true }),
  callback = function(event)
    -- Ensure the keymaps are buffer-local
    local bufopts = { buffer = event.buf }

    -- Code formatting
    vim.keymap.set('n', '<leader>fm', function()
      vim.lsp.buf.format { async = true }
    end, bufopts)

  end
})
