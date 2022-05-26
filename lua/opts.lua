require'packer'.init{
    ensure_dependencies   = true, -- Should packer install plugin dependencies?
    plugin_package = 'packer', -- The default package for plugins
    max_jobs = nil, -- Limit the number of simultaneous jobs. nil means no limit
    auto_clean = true, -- During sync(), remove unused plugins
    compile_on_sync = true, -- During sync(), run packer.compile()
    disable_commands = false, -- Disable creating commands
    opt_default = false, -- Default to using opt (as opposed to start) plugins
    transitive_opt = true, -- Make dependencies of opt plugins also opt by default
    transitive_disable = true, -- Automatically disable dependencies of disabled plugins
    auto_reload_compiled = true, -- Automatically reload the compiled file after creating it.
    git = {
        cmd = 'git', -- The base command for git operations
        subcommands = { -- Format strings for git subcommands
            update         = 'pull --ff-only --progress --rebase=false',
            install        = 'clone --depth %i --no-single-branch --progress',
            fetch          = 'fetch --depth 999999 --progress',
            checkout       = 'checkout %s --',
            update_branch  = 'merge --ff-only @{u}',
            current_branch = 'branch --show-current',
            diff           = 'log --color=never --pretty=format:FMT --no-show-signature HEAD@{1}...HEAD',
            diff_fmt       = '%%h %%s (%%cr)',
            get_rev        = 'rev-parse --short HEAD',
            get_msg        = 'log --color=never --pretty=format:FMT --no-show-signature HEAD -n 1',
            submodules     = 'submodule update --init --recursive --progress'
        },
        depth = 1, -- Git clone depth
        clone_timeout = 60, -- Timeout, in seconds, for git clones
        default_url_format = 'https://github.com/%s' -- Lua format string used for "aaa/bbb" style plugins
    },
    display = {
        non_interactive = false, -- If true, disable display windows for all operations
        open_fn  = nil, -- An optional function to open a window for packer's display
        open_cmd = '65vnew \\[packer\\]', -- An optional command to open a window for packer's display
        working_sym = '⟳', -- The symbol for a plugin being installed/updated
        error_sym = '✗', -- The symbol for a plugin with an error in installation/updating
        done_sym = '✓', -- The symbol for a plugin which has completed installation/updating
        removed_sym = '-', -- The symbol for an unused plugin which was removed
        moved_sym = '→', -- The symbol for a plugin which was moved (e.g. from opt to start)
        header_sym = '━', -- The symbol for the header line in packer's display
        show_all_info = true, -- Should packer show all update details automatically?
        prompt_border = 'double', -- Border style of prompt popups.
        keybindings = { -- Keybindings for the display window
            quit = 'q',
            toggle_info = '<CR>',
            diff = 'd',
            prompt_revert = 'r',
        }
    },
    luarocks = {
        python_cmd = 'python3' -- Set the python command to use for running hererocks
    },
    log = { level = 'warn' }, -- The default print log level. One of: "trace", "debug", "info", "warn", "error", "fatal".
    profile = {
        enable = false,
        threshold = 1, -- integer in milliseconds, plugins which load faster than this won't be shown in profile output
    }

}



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

require'Comment'.setup{
    padding = true,
    sticky = true,
    ignore = nil,
    toggler = {
        line = 'gcc',
        block = 'gbc',
    },

    opleader = {
        line = 'gc',
        block = 'gb',
    },
    extra = {
        above = 'gcO',
        below = 'gco',
        eol = 'gcA',
    },
    mappings = {
        basic = true,
        extra = true,
        extended = false,
    },
    pre_hook = nil,
    post_hook = nil,
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


