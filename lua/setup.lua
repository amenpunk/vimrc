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
set.signcolumn="number"



set.laststatus=2
set.showtabline=2


local chadtree_settings = {
    ["view.width"] = 27,
}

g("chadtree_settings", chadtree_settings)

