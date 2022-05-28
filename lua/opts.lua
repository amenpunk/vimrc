-- require("toggleterm").setup{
--     --size = 20,
--     open_mapping = [[<Leader><Enter>]],
--     hide_numbers = true, -- hide the number column in toggleterm buffers
--     shade_filetypes = {},
--     shade_terminals = true,
--     shading_factor = '<number>',
--     start_in_insert = true,
--     insert_mappings = true, -- whether or not the open mapping applies in insert mode
--     persist_size = true,
--     direction = 'float',
--     close_on_exit = true, -- close the terminal window when the process exits
--     float_opts = {
--        border = 'curved',--//'double' |'shadow'|'curved'|
--        --winblend = 3,
--        highlights = {
--            border = "Normal",
--            background = "Normal",
--        }
--     }
--
-- }

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
        virt_text = "hello world"
    },
    mappings = {}
}

--require('kanagawa').setup({
--    undercurl = true,           -- enable undercurls
--    commentStyle = "italic",
--    functionStyle = "NONE",
--    keywordStyle = "italic",
--    statementStyle = "bold",
--    typeStyle = "NONE",
--    variablebuiltinStyle = "italic",
--    specialReturn = true,       -- special highlight for the return keyword
--    specialException = true,    -- special highlight for exception handling keywords 
--    transparent = false,        -- do not set background color
--    dimInactive = false,        -- dim inactive window `:h hl-NormalNC`
--    colors = {
--        bg = '#252525'
--    },
--    overrides = {
--        MyHlGroup1 = { bg = "#252525", style="underline,bold", guisp="blue" },
--        VertSplit  = { bg = "NONE" },
--    },
--})

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

require("bufferline").setup{}
require('Comment').setup()
require('nvim-autopairs').setup{}

require("indent_blankline").setup{ 
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
    buftype_exclude = {"terminal", "chadtree","scratch", "dbui"},
    filetype_exclude = {"dashboard", "chadtree", 'scratch', 'packer', 'NvimTree', 'dbui' },
}

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
require("todo-comments").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
}

-- require('gitsigns').setup {
--     current_line_blame_opts = {
--         virt_text = true,
--         virt_text_pos = 'right_align',
--         delay = 1000,
--         ignore_whitespace = false,
--     },
--     preview_config = {
--         border = 'single',
--         style = 'minimal',
--         relative = 'cursor',
--         row = 0,
--         col = 1
--     },
-- }

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

require("lsp-colors").setup({
  Error = "#db4b4b",
  Warning = "#e0af68",
  Information = "#0db9d7",
  Hint = "#10B981"
})

