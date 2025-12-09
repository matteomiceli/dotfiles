vim.api.nvim_create_user_command(
  'WriteMode',
  function()
    -- Editor formatting
    vim.opt.wrap = true
    vim.opt.linebreak = true

    -- Spell check
    -- use `z=` to see suggetions, ]s [s to cycle through suggestions
    vim.opt.spell = true
    vim.opt.spelllang = 'en_us'
  end,
  { desc = 'Enter write mode' }
)
