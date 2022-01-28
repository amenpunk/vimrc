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

require('nvim-autopairs').setup{}
require('staline').setup{
    sections = {
        left = {
            '▊', ' ', { 'Evil', ' ' }, ' ',         -- The mode and evil sign
            'file_size', ' ',                        -- Filesize
            { 'StalineFile', 'file_name' }, ' '       -- Filename in different highlight
        },
        mid = { ' ', 'lsp_name' },                      -- "lsp_name" is still a little buggy
        right = {
            { 'StalineEnc', vim.bo.fileencoding:upper() }, '  ',  -- Example for custom section
            { 'StalineEnc', 'cool_symbol' }, ' ',                 -- the cool_symbol for your OS
            { 'StalineGit', 'branch' }, ' ', '▊'                  -- Branch Name in different highlight
        }
    },
    defaults = {
        bg = "#252525",
        branch_symbol = " "
    },
    mode_colors = {
        n = "#38b1f0",
        i = "#9ece6a",       -- etc mode
    }
}

vim.cmd [[hi Evil        guifg=#f36365 guibg=#202328]]       -- Higlight for Evil symbol
vim.cmd [[hi StalineEnc  guifg=#7d9955 guibg=#202328]]       -- Encoding Highlight
vim.cmd [[hi StalineGit  guifg=#8583b3 guibg=#202328]]       -- Branch Name Highlight
vim.cmd [[hi StalineFile guifg=#c37cda guibg=#202328]]       -- File name Highlight

require("lsp-colors").setup({ })

local lsp_installer = require("nvim-lsp-installer")
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

lsp_installer.on_server_ready(function(server)
    local opts = {
        capabilities = capabilities
    }
    server:setup(opts)
end)

require("trouble").setup { }

