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

require("notify").setup({
    stages = "fade_in_slide_out",
    on_open = nil,
    on_close = nil,
    render = "default",
    timeout = 5000,
    background_colour = "Normal",
    minimum_width = 50,
    icons = {
        ERROR = "",
        WARN = "",
        INFO = "",
        DEBUG = "",
        TRACE = "✎",
    },
})

g('flutter_hot_reload_on_save', 1)
g('flutter_autoscroll', 1)
g('flutter_use_last_run_option', 1)

g('todoist', {
    defaultProject = 'GrupoDIT',
    useMarkdownSyntax = true
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
    -- shell = vim.o.shell, -- change the default shell
    -- This field is only relevant if direction is set to 'float'
    float_opts = {
        -- The border key is *almost* the same as 'nvim_open_win'
        -- see :h nvim_open_win for details on borders however
        -- the 'curved' border is a custom border type
        -- not natively supported but implemented in this plugin.
        border = 'single',--// | 'double' | 'shadow' | 'curved' | ... other options supported by win open
        --width = 0,--<value>,
        --height = 20,--<value>,
        winblend = 3,
        highlights = {
            border = "Normal",
            background = "Normal",
        }
    }
}

g('toggleterm_terminal_mapping', '<C-t>')


function _G.set_terminal_keymaps()
  local opts = {noremap = true}
  vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')



require('database')
