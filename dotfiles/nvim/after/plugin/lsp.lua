-- Mason defaults
require('mason-lspconfig').setup({
  ensure_installed = {
    "lua_ls",
    "gopls",
    "ts_ls",
    "pyright",
    "svelte",
    "html",
    "cssls",
    "emmet_language_server",
    "eslint"
  }
})

-- GDScript LSP config
-- launch nvim with `nvim --listen /tmp/godot.pipe`
-- and add these exec flags to external editor in godot
-- `--server /tmp/godot.pipe --remote-send "<esc>:n {file}<CR>:call cursor({line},{col})<CR>"`
vim.lsp.enable('gdscript')

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

    -- Goto def
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
  end
})
