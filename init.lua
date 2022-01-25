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
    buftype_exclude = {"terminal", "chadtree","scratch", "dbui"},
    filetype_exclude = {"dashboard", "chadtree", 'scratch', 'packer', 'NvimTree', 'dbui' },
}

local actions = require "telescope.actions"

require("bufferline").setup{}
require('binds')
require('plugins')
require('setup')
require('gitsigns').setup {}
require('Comment').setup()
require('telescope').setup{
    defaults = {
        mappings = {
            i = {
                ["<c-j>"] = actions.move_selection_next,
                ["<c-k>"] = actions.move_selection_previous
            }
        }
    },
}
require("todo-comments").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
}

require'lspconfig'.tsserver.setup{

}
