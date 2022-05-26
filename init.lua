vim.opt.termguicolors = true
vim.g.material_theme_style='darker'
vim.opt.list = true

-- vim.wo.signcolumn = 'yes'
require("indent_blankline").setup{ 
    buftype_exclude = {"terminal", "chadtree","scratch", "dbui"},
    filetype_exclude = {"dashboard", "chadtree", 'scratch', 'packer', 'NvimTree', 'dbui' },
}

local actions = require "telescope.actions"

require("bufferline").setup{}
require('binds')
require('plugins')
require('opts')
require('setup')
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

vim.cmd [[hi Evil        guifg=#f36365 guibg=#202328]]       -- Higlight for Evil symbol
vim.cmd [[hi StalineEnc  guifg=#7d9955 guibg=#202328]]       -- Encoding Highlight
vim.cmd [[hi StalineGit  guifg=#8583b3 guibg=#202328]]       -- Branch Name Highlight
vim.cmd [[hi StalineFile guifg=#c37cda guibg=#202328]]       -- File name Highlight

require("lsp-colors").setup({ })

local lsp_installer = require("nvim-lsp-installer")

lsp_installer.on_server_ready(function(server)
    local opts = {
    }
    server:setup(opts)
end)

require("trouble").setup {
}

require('vgit').setup()

--- good config
local signs = {
    Error = " ",
    Warn = " ",
    Hint = " ",
    Info = " "
}

for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

require'nvim-tree'.setup {
    view = {
        auto_resize = true,
        width = 5,
        height = 20,
        hide_root_folder = true,
        side = 'left',
        number = false,
        relativenumber = false,
        signcolumn = "yes"
    },
}
