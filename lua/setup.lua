local set = vim.opt
local g = vim.api.nvim_set_var

-- sets
set.clipboard='unnamedplus'
set.hidden=true
set.updatetime=300
set.shortmess='c'
set.ruler = false
set.completeopt="menu,menuone,noselect"
-- set.cmdheight=2
-- set.ma=true
set.splitbelow=true
set.showmatch=true
set.modifiable=true
set.encoding='UTF-8'
set.wrap = false --  hide and not generate new line
set.background='dark'
set.relativenumber=true
set.ts=4

set.autoindent=true
set.smartindent=true
set.cindent=true

set.expandtab=true
set.softtabstop=2
set.tabstop=8
set.shiftwidth=4
set.ignorecase=true
set.winwidth=110
set.number=true
set.backup=false
set.writebackup=false
set.swapfile=false
--forv git set.incsearch=true
set.incsearch=false
set.hlsearch=true
-- set.guifont='Fira Code 12'
set.wildignore='*.pyc,*.o,*.obj,*.svn,*.swp,*.class,*.hg,*.DS_Store,*.min.*,node_modules'
set.showmode=false
set.foldmethod='indent'
set.foldlevel=99
set.scrollback=20
-- set.ruler=true
set.showcmd=false
set.cmdheight=1
set.updatetime=200
-- set.signcolumn="number"  --- hacer merge entre los numeros y gitsigns
-- set.signcolumn='auto'
set.signcolumn='yes'
set.termguicolors=true

set.laststatus=0
-- set.laststatus=2
set.showtabline=2

local chadtree_settings = {
    ["view.width"] = 27,
}

g("chadtree_settings", chadtree_settings)
vim.g.material_theme_style='darker'
vim.g.material_terminal_italics = 1

g("db_ui_winwidth", 27)

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

g('flutter_hot_reload_on_save', 1)
g('flutter_autoscroll', 1)
g('flutter_use_last_run_option', 1)
g('material_terminal_italics', 1)

g("startify_bookmarks", {
    { ["v"] = '~/.config/nvim/init.lua' }
})

require("toggleterm").setup{
    size = 20,
    open_mapping = '<Leader><Enter>',
    hide_numbers = true, -- hide the number column in toggleterm buffers
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = '<number>', -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
    start_in_insert = true,
    insert_mappings = true, -- whether or not the open mapping applies in insert mode
    persist_size = true,
    direction = 'float', --| 'horizontal' | 'window' | 'float',
    close_on_exit = true, -- close the terminal window when the process exits
    float_opts = {
        border = 'single',--// | 'double' | 'shadow' | 'curved' | ... other options supported by win open
        winblend = 3,
        highlights = {
            border = "Normal",
            background = "Normal",
        }
    }
}

g('toggleterm_terminal_mapping', '<C-t>')
g('closetag_filenames', '.html,*.xhtml,*.phtml,*.jx')
g('closetag_shortcut', '>')

g('indent_blankline_filetype_exclude', {'scratch', 'chadtree'})
g('indent_blankline_buftype_exclude', {'scratch', 'chadtree'})
g('coc_snippet_next', '<tab>')
g('db_ui_auto_execute_table_helpers', 1)
g('db_ui_use_nerd_fonts' , 1)
g('indent_blankline_buftype_exclude' , {'dbui'})
g('indent_blankline_bufname_exclude' , {'dbui'})
-- g('db_ui_default_query' , 'select * from "{table}" limit 10')

-- PHP CONFIG

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


-- g("startify_custom_header",{'     _           _                      _             ',
--                              '             ▕                                 ',
--                              '  ▕ ███       ▕│█     ___   ___                 ',
--                              '  ▕││███     ▕│███▕│         █   ██      ',
--                              '  ▕││  ███   ▕│███▕│▕│ ▁ ▕│    ▕│██          ',
--                              '  ▕││  ▕│███ ▕│███▕│▕│   ▕│    ▕│██  ◢◣  ◢  ',
--                              '  ▕││  ▕│  ███│███▕│  ▁▁  ▁   ██   ▜█ ██  ',
--                              '     ▕│    ████      ‾‾    ‾                 ',
--                              '     ▕│                                        ',
--                              '                 ‾                      ‾             '})
--

g('header_ascii', {
   '   ⣿⣿⠏⣠⣾⣦⡐⢌⢿⣷⣦⣅⡑⠕⠡⠐⢿⠿⣛⠟⠛⠛⠛⠛⠡⢷⡈⢂⢕⢂ ',
   '   ⠟⣡⣾⣿⣿⣿⣿⣦⣑⠝⢿⣿⣿⣿⣿⣿⡵⢁⣤⣶⣶⣿⢿⢿⢿⡟⢻⣤⢑⢂ ',
   '   ⣾⣿⣿⡿⢟⣛⣻⣿⣿⣿⣦⣬⣙⣻⣿⣿⣷⣿⣿⢟⢝⢕⢕⢕⢕⢽⣿⣿⣷⣔ ',
   '   ⣿⣿⠵⠚⠉⢀⣀⣀⣈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣗⢕⢕⢕⢕⢕⢕⣽⣿⣿⣿⣿ ',
   '   ⢷⣂⣠⣴⣾⡿⡿⡻⡻⣿⣿⣴⣿⣿⣿⣿⣿⣿⣷⣵⣵⣵⣷⣿⣿⣿⣿⣿⣿⡿ ',
   '   ⢌⠻⣿⡿⡫⡪⡪⡪⡪⣺⣿⣿⣿⣿⣿⠿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃ ',
   '   ⠣⡁⠹⡪⡪⡪⡪⣪⣾⣿⣿⣿⣿⠋⠐⢉⢍⢄⢌⠻⣿⣿⣿⣿⣿⣿⣿⣿⠏⠈ ',
   '   ⡣⡘⢄⠙⣾⣾⣾⣿⣿⣿⣿⣿⣿⡀⢐⢕⢕⢕⢕⢕⡘⣿⣿⣿⣿⣿⣿⠏⠠⠈ ',
   '   ⠌⢊⢂⢣⠹⣿⣿⣿⣿⣿⣿⣿⣿⣧⢐⢕⢕⢕⢕⢕⢅⣿⣿⣿⣿⡿⢋⢜⠠⠈ ',
   '   ⠄⠁⠕⢝⡢⠈⠻⣿⣿⣿⣿⣿⣿⣿⣷⣕⣑⣑⣑⣵⣿⣿⣿⡿⢋⢔⢕⣿⠠⠈ ',
})
-- g("startify_custom_header", 'g:header_ascii')

require('database')



---- lsp config
  
local lspkind = require "lspkind"
lspkind.init()

local luasnip = require("luasnip")
local cmp = require "cmp"
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done({  map_char = { tex = '' } }))

cmp.setup {
    mapping = {

        ['<Tab>'] = function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            else
                fallback()
            end
        end,


        ["<C-d>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-e>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.close()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            else
                fallback()
            end
        end, { "i", "s" }),
        ["<C-n>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.choice_active() then
                luasnip.change_choice(1)
            else
                fallback()
            end
        end, { "i", "s" }),
        ["<C-y>"] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Insert,
            select = true,
        },
        ["<c-space>"] = cmp.mapping.complete(),
    },
    sources = {
        { name = "nvim_lua" },
        { name = "nvim_lsp" },
        { name = "path" },
        { name = "luasnip" },
        {
            name = "buffer",
            keyword_length = 5,
            option = {
                get_bufnrs = function()
                    local bufs = {}
                    for _, win in ipairs(vim.api.nvim_list_wins()) do
                        bufs[vim.api.nvim_win_get_buf(win)] = true
                    end
                    return vim.tbl_keys(bufs)
                end
            }
        },
    },

    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end,
    },

    formatting = {
        format = lspkind.cmp_format {
            with_text = true,
            menu = {
                buffer = "[buf]",
                nvim_lsp = "[LSP]",
                nvim_lua = "[api]",
                path = "[path]",
                luasnip = "[snip]",
            }
        }
    },

    experimental = {
        native_menu = false,

        ghost_text = true,
    }
}

require'nvim-treesitter.configs'.setup {
    sync_install = false,
    highlight = {
        enable = true,
        disable = { "c", "rust" },
        additional_vim_regex_highlighting = false,
    },
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

vim.cmd("colorscheme kanagawa")
