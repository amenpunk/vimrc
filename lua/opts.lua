require("toggleterm").setup{
    size = 10,
    open_mapping = [[<Leader><Enter>]],
    hide_numbers = true, -- hide the number column in toggleterm buffers
    shade_terminals = true,
    start_in_insert = true,
    insert_mappings = true, -- whether or not the open mapping applies in insert mode
    persist_size = true,
    direction = 'float',
    close_on_exit = true, -- close the terminal window when the process exits
    float_opts = {
       border = 'curved',--//'double' |'shadow'|'curved'|
       winblend = 1,
       highlights = {
           border = "Normal",
           background = "Normal",
       }
    }
--
}
--
require'marks'.setup {
    default_mappings = true,
    builtin_marks = {},
    cyclic = true,
    force_write_shada = false,
    refresh_interval = 250,
    sign_priority = { lower=10, upper=15, builtin=8, bookmark=20 },
    excluded_filetypes = {},
    bookmark_0 = {
        sign = "⚑",
    },
    mappings = {}
}

require'nvim-treesitter.configs'.setup {
    sync_install = false,
    indent = {
        enable = true
    },
    incremental_selection = {
        enable = true,
    },
    highlight = {
        enable = true,
    },
}
--
require'Comment'.setup{
    padding = true,
    sticky = true,
    ignore = nil,
    toggler = {
        line = 'gcc',
        block = 'gbc',
    },

    opleader = {
        line = 'gc',
        block = 'gb',
    },
    extra = {
        above = 'gcO',
        below = 'gco',
        eol = 'gcA',
    },
    mappings = {
        basic = true,
        extra = true,
        extended = false,
    },
    pre_hook = nil,
    post_hook = nil,
}
--
require("bufferline").setup{}
require('Comment').setup()
require('nvim-autopairs').setup{}
--
require("indent_blankline").setup{
    -- space_char_blankline = " ",
    -- show_current_context = true,
    -- show_current_context_start = true,
    buftype_exclude = {"terminal", "chadtree","scratch", "dbui"},
    filetype_exclude = {"dashboard", "chadtree", 'scratch', 'packer', 'NvimTree', 'dbui' },
}
--
local actions = require "telescope.actions"

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

require("todo-comments").setup { }

local lsp_installer = require("nvim-lsp-installer")

lsp_installer.on_server_ready(function(server)
    local opts = {}
    server:setup(opts)
end)



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


--- arreglar este plugin
require('vgit').setup()
