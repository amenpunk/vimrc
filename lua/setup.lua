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
set.wrap = true
set.background='dark'
set.relativenumber=true
set.ts=4
set.autoindent=true
set.expandtab=true
set.shiftwidth=4
set.ignorecase=true
set.winwidth=110
set.number=true
set.backup=false
set.writebackup=false
set.swapfile=false
set.shiftwidth=4
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

g("dbs", {
})

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
