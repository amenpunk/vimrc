vim.opt.termguicolors = true
vim.cmd("colorscheme material")
vim.g.material_theme_style='darker'

vim.opt.list = true

require("indent_blankline").setup { }
require('binds')
require('plugins')
require('setup')

require('stabline').setup {
    style = "bar",
	bg = "#252525",
	fg = "white",
    inactive_bg = "#252525",
	-- stab_right = "",
	defaults = {
		style       = "bar", -- others: arrow, slant, bubble
		stab_left   = "┃",   -- 😬
		stab_right  = " ",

		-- fg          = Default is fg of "Normal".
		-- bg          = Default is bg of "Normal".
		inactive_bg = "#1e2127",
		inactive_fg = "#aaaaaa",
		-- stab_bg     = Default is darker version of bg.,

		font_active = "bold",
		exclude_fts = { 'NvimTree', 'dashboard', 'lir' },
		stab_start  = "",   -- The starting of stabline
		stab_end    = "",
	},
}

