vim.api.nvim_create_user_command(
  'WriteMode',
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
  { desc = 'Enter write mode' }
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
