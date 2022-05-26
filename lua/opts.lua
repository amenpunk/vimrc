require("toggleterm").setup{
    size = 20,
    open_mapping = '<Leader><Enter>',
    hide_numbers = true, -- hide the number column in toggleterm buffers
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = '<number>',
    start_in_insert = true,
    insert_mappings = true, -- whether or not the open mapping applies in insert mode
    persist_size = true,
    direction = 'float', --| 'horizontal' | 'window' | 'float',
    close_on_exit = true, -- close the terminal window when the process exits
    float_opts = {
        border = 'curved',--//'double' |'shadow'|'curved'| 
        winblend = 3,
        highlights = {
            border = "Normal",
            background = "Normal",
        }
    }
}

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

require('kanagawa').setup({
    undercurl = true,           -- enable undercurls
    commentStyle = "italic",
    functionStyle = "NONE",
    keywordStyle = "italic",
    statementStyle = "bold",
    typeStyle = "NONE",
    variablebuiltinStyle = "italic",
    specialReturn = true,       -- special highlight for the return keyword
    specialException = true,    -- special highlight for exception handling keywords 
    transparent = false,        -- do not set background color
    dimInactive = false,        -- dim inactive window `:h hl-NormalNC`
    colors = {
        bg = '#252525'
    },
    overrides = {
        MyHlGroup1 = { bg = "#252525", style="underline,bold", guisp="blue" },
        VertSplit  = { bg = "NONE" },
    },
})

require'nvim-treesitter.configs'.setup {
    sync_install = false,
    ensure_installed = "maintained",
    indent = {
        enable = true
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm",
        },
    },
    highlight = {
        enable = true,
        disable = { "c", "rust" },
        additional_vim_regex_highlighting = false,
    },
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


