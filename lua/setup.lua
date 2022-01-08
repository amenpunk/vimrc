local set = vim.opt
local g = vim.api.nvim_set_var

-- sets
set.clipboard='unnamedplus'
set.hidden=true
set.updatetime=300
set.shortmess='c'
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
set.expandtab=true
set.shiftwidth=4
set.ignorecase=false
set.winwidth=110
set.number=true
set.backup=false
set.writebackup=false
set.swapfile=false
-- set.guifont='Fira Code 12'
set.wildignore='*.pyc,*.o,*.obj,*.svn,*.swp,*.class,*.hg,*.DS_Store,*.min.*,node_modules'
-- set.showmode=false
-- set.ruler=true
set.showcmd=false
set.cmdheight=1
set.updatetime=200
set.signcolumn="number"  --- hacer merge entre los numeros y gitsigns
-- set.signcolumn='auto'
set.termguicolors=true

-- set.laststatus=0
set.laststatus=0
set.showtabline=2

local chadtree_settings = {
    ["view.width"] = 27,
}

g("chadtree_settings", chadtree_settings)
vim.g.material_theme_style='darker'

g("db_ui_winwidth", 27)

require('gitsigns').setup {
    current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = 'right_align',
        delay = 1000,
        ignore_whitespace = false,
    },
    preview_config = {
        border = 'single',
        style = 'minimal',
        relative = 'cursor',
        row = 0,
        col = 1
    },
}

g('flutter_hot_reload_on_save', 1)
g('flutter_autoscroll', 1)
g('flutter_use_last_run_option', 1)

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

require'marks'.setup {
    default_mappings = true,
    builtin_marks = { ".", "<", ">", "^" },
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

-- g('header_ascii', {
--    '⣿⣿⠏⣠⣾⣦⡐⢌⢿⣷⣦⣅⡑⠕⠡⠐⢿⠿⣛⠟⠛⠛⠛⠛⠡⢷⡈⢂⢕⢂ ',
--    '⠟⣡⣾⣿⣿⣿⣿⣦⣑⠝⢿⣿⣿⣿⣿⣿⡵⢁⣤⣶⣶⣿⢿⢿⢿⡟⢻⣤⢑⢂ ',
--    '⣾⣿⣿⡿⢟⣛⣻⣿⣿⣿⣦⣬⣙⣻⣿⣿⣷⣿⣿⢟⢝⢕⢕⢕⢕⢽⣿⣿⣷⣔ ',
--    '⣿⣿⠵⠚⠉⢀⣀⣀⣈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣗⢕⢕⢕⢕⢕⢕⣽⣿⣿⣿⣿ ',
--    '⢷⣂⣠⣴⣾⡿⡿⡻⡻⣿⣿⣴⣿⣿⣿⣿⣿⣿⣷⣵⣵⣵⣷⣿⣿⣿⣿⣿⣿⡿ ',
--    '⢌⠻⣿⡿⡫⡪⡪⡪⡪⣺⣿⣿⣿⣿⣿⠿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃ ',
--    '⠣⡁⠹⡪⡪⡪⡪⣪⣾⣿⣿⣿⣿⠋⠐⢉⢍⢄⢌⠻⣿⣿⣿⣿⣿⣿⣿⣿⠏⠈ ',
--    '⡣⡘⢄⠙⣾⣾⣾⣿⣿⣿⣿⣿⣿⡀⢐⢕⢕⢕⢕⢕⡘⣿⣿⣿⣿⣿⣿⠏⠠⠈ ',
--    '⠌⢊⢂⢣⠹⣿⣿⣿⣿⣿⣿⣿⣿⣧⢐⢕⢕⢕⢕⢕⢅⣿⣿⣿⣿⡿⢋⢜⠠⠈ ',
--    '⠄⠁⠕⢝⡢⠈⠻⣿⣿⣿⣿⣿⣿⣿⣷⣕⣑⣑⣑⣵⣿⣿⣿⡿⢋⢔⢕⣿⠠⠈ ',
-- })
-- g("startify_custom_header", 'g:header_ascii')

require('database')
