-- Prose mode --
local init_vals = {}

-- store config vals so we can restore after going back to code mode
local function store_config()
  init_vals = {
    wrap = vim.opt.wrap:get(),
    linebreak = vim.opt.linebreak:get(),
    colorcolumn = vim.opt.colorcolumn:get(),
    nu = vim.opt.nu:get(),
    relativenumber = vim.opt.relativenumber:get(),
    completion = vim.b.completion,
    spell = vim.opt.spell:get(),
    spelllang = vim.opt.spelllang:get(),
  }
end

vim.api.nvim_create_user_command(
  'ProseMode',
  function()
    store_config()
    -- Editor formatting
    vim.opt.wrap = true
    vim.opt.linebreak = true
    vim.opt.colorcolumn = ""
    vim.opt.nu = false
    vim.opt.relativenumber = false
    -- remove completion
    vim.b.completion = false
    -- Spell check
    -- use `z=` to see suggetions, ]s [s to cycle through suggestions
    vim.opt.spell = true
    vim.opt.spelllang = 'en_us'
  end,
  { desc = 'Enter prose mode' }
)

vim.api.nvim_create_user_command(
  'CodeMode',
  function()
    -- Reset values
    vim.opt.wrap = init_vals.wrap
    vim.opt.linebreak = init_vals.linebreak
    vim.opt.colorcolumn = init_vals.colorcolumn
    vim.opt.nu = init_vals.nu
    vim.opt.relativenumber = init_vals.relativenumber
    vim.b.completion = init_vals.completion
    vim.opt.spell = init_vals.spell
    vim.opt.spelllang = init_vals.spelllang
  end,
  { desc = 'Enter code mode' }
)
-- end prose mode --

-- Show macro recording when default `cmdheight = 0`
vim.api.nvim_create_autocmd("RecordingEnter", {
  callback = function()
    vim.opt.cmdheight = 1
  end,
})
vim.api.nvim_create_autocmd("RecordingLeave", {
  callback = function()
    vim.opt.cmdheight = 0
  end,
})
