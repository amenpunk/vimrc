local set = vim.opt
local g = vim.api.nvim_set_var

vim.g.code_action_menu_window_border = 'single'
vim.opt.termguicolors = true
vim.g.material_theme_style='darker'
vim.opt.list = true
-- vim.wo.signcolumn = 'yes'

vim.cmd("colorscheme material")
-- sets
set.clipboard='unnamedplus' -- only one clipboard
set.hidden=true
set.updatetime=300
set.shortmess='c'
set.ruler = false
set.completeopt="menu,menuone,noselect,noinsert"
-- set.cmdheight=2
-- set.ma=true
set.splitbelow=true
set.showmatch=true
set.modifiable=true
set.encoding='UTF-8'
set.wrap = true --  hide and not generate new line
set.colorcolumn = '0' --  color column
set.textwidth = 120 --  color column
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
set.incsearch=true
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
--
-- set.signcolumn="number"  --- hacer merge entre los numeros y gitsigns
set.signcolumn='auto'

set.termguicolors=true
set.laststatus=0
-- set.laststatus=2
set.showtabline=2

local chadtree_settings = {
    ["view.width"] = 25,
}

g("chadtree_settings", chadtree_settings)
vim.g.material_theme_style='darker'
vim.g.material_terminal_italics = 1

g("db_ui_winwidth", 27)
g('flutter_hot_reload_on_save', 1)
g('flutter_autoscroll', 1)
g('flutter_use_last_run_option', 1)
g('material_terminal_italics', 1)

g("startify_bookmarks", {
    { ["v"] = '~/.config/nvim/init.lua' }
})

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




