-- editor formatting
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.scrolloff = 4

vim.opt.updatetime = 750
vim.opt.cmdheight = 0
vim.opt.signcolumn = "yes"

-- text formatting
vim.opt.wrap = false
vim.opt.smartindent = false

-- search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false -- remove persistent highlight on search

-- diagnostics
 vim.diagnostic.config({ virtual_text = true })

-- themeing
vim.opt.termguicolors = true

-- clipboard
vim.opt.clipboard = 'unnamedplus'

-- increased update time for faster feedback
vim.opt.updatetime = 400

-- netrw
vim.g.netrw_banner = 0

-- color column at 80
vim.opt.colorcolumn = "80"
