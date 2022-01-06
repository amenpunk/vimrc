vim.opt.termguicolors = true
vim.cmd("colorscheme material")
vim.g.material_theme_style='darker'
vim.opt.list = true

-- vim.cmd[[colorscheme tokyonight]]

require("indent_blankline").setup { }
require("bufferline").setup{}
require('binds')
require('plugins')
require('setup')
require('gitsigns').setup { }
require('Comment').setup()
require'nvim-todoist'.neovim_stuff.use_defaults()


