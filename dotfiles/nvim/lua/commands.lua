-- Enter prose mode
vim.api.nvim_create_user_command(
  'ProseMode',
  function()
    -- Editor formatting
    vim.opt.wrap = true
    vim.opt.linebreak = true
    vim.opt.colorcolumn = ""
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
    -- Editor formatting
    vim.opt.wrap = false
    vim.opt.linebreak = false
    vim.opt.colorcolumn = "80"
    -- remove completion
    vim.b.completion = true



    -- Spell check
    -- use `z=` to see suggetions, ]s [s to cycle through suggestions
    vim.opt.spell = false
    vim.opt.spelllang = 'en_us'
  end,
  { desc = 'Enter code mode' }
)

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
