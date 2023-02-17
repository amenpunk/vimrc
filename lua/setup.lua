local set = vim.opt
local g = vim.api.nvim_set_var

vim.g.code_action_menu_window_border = 'single'
vim.opt.termguicolors = true
vim.g.material_theme_style='darker'
vim.opt.list = true

-- vim.wo.signcolumn = 'yes'


-- The theme comes with six filters, default, machine, ristretto, octogon spectrum, and classic
-- vim.g.monokaipro_filter = "spectrum"
vim.o.background = "dark" -- or "light" for light mode
vim.cmd("colorscheme material")
-- vim.cmd("colorscheme sonokai")
-- vim.cmd("colorscheme monokai_pro")
-- vim.cmd("colorscheme monokai_soda")
-- vim.cmd("colorscheme onedark")
-- vim.cmd([[colorscheme gruvbox]])
-- vim.cmd("colorscheme monokaipro")
-- vim.cmd("colorscheme monokai2")
-- vim.cmd("colorscheme gruvbox")
-- vim.cmd("colorscheme srcery")
-- vim.cmd.colorscheme "oxocarbon"


-- sets
set.shortmess='nocI'
set.clipboard='unnamedplus' -- only one clipboard
set.hidden=true
set.updatetime=300
set.ruler = false

-- [completion opt in for cpm config]
--set.completeopt="menu,menuone,noselect,noinsert"
set.completeopt="menu,menuone,noselect"

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
set.ts=2
set.autoindent=true
set.smartindent=true
set.cindent=true
set.expandtab=true
set.softtabstop=2
set.tabstop=8
set.shiftwidth=2
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
set.updatetime=200
set.cmdheight=0
--
-- set.signcolumn="number"  --- hacer merge entre los numeros y gitsigns
set.signcolumn='auto'
-- set.signcolumn='yes'

set.termguicolors=true
set.laststatus=0 --set 0 when dont show bar
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

--g('toggleterm_terminal_mapping', '<C-t>')
g('closetag_filenames', '.html,*.xhtml,*.phtml,*.jx,*.js,*.jsx')
g('closetag_shortcut', '>')

g('indent_blankline_filetype_exclude', {'scratch', 'chadtree'})
g('indent_blankline_buftype_exclude', {'scratch', 'chadtree'})
g('coc_snippet_next', '<tab>')
g('db_ui_auto_execute_table_helpers', 1)
g('db_ui_use_nerd_fonts' , 1)
g('indent_blankline_buftype_exclude' , {'dbui'})
g('indent_blankline_bufname_exclude' , {'dbui'})
-- g('indent_blankline_char_blankline' , '┆')
-- g("indent_blankline_char_list", {'|', '¦', '┆', '┊'})
-- g("indent_blankline_char" , '|')
-- g("indent_blankline_char" , '┆')
-- g("indent_blankline_char" , '¦')

g("compe_source_vim_dadbod_completion", true)
g("monokaipro_filter", "spectrum")
g('db_ui_default_query' , 'select * from "{table}" limit 10')
vim.g.monokaipro_filter = "spectrum"

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
-- g("startify_custom_header", 'g:header_ascii')
