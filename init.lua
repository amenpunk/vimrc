vim.opt.termguicolors = true
vim.cmd("colorscheme material")
-- vim.cmd("colorscheme moonfly")
vim.g.material_theme_style='darker'
vim.opt.list = true

-- vim.o.updatetime = 300
-- vim.wo.signcolumn = 'yes'
-- vim.cmd[[colorscheme tokyonight]]
require("indent_blankline").setup{ 
    char = '|',
    buftype_exclude = {"terminal", "chadtree","scratch"},
    filetype_exclude = {"dashboard", "chadtree", 'scratch', 'packer', 'NvimTree' },
}

require("bufferline").setup{}
require('binds')
require('plugins')
require('setup')
require('gitsigns').setup {}
require('Comment').setup()
