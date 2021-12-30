vim.opt.termguicolors = true
vim.cmd("colorscheme melange")

require('stabline').setup{}
require('staline').setup{
    defaults = {
        style       = "bar", -- others: arrow, slant, bubble
        stab_left   = "┃",   -- 😬
        stab_right  = " ",

        -- fg          = Default is fg of "Normal".
        -- bg          = Default is bg of "Normal".
        inactive_bg = "#252525",
        inactive_fg = "#aaaaaa",
        -- stab_bg     = Default is darker version of bg.,

        font_active = "bold",
        exclude_fts = { 'NvimTree', 'dashboard', 'lir' },
        stab_start  = "",   -- The starting of stabline
        stab_end    = "",
    },
}
require('binds')
require('plugins')
require('setup')

