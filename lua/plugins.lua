packer = require 'packer'

packer.init{
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


local use = packer.use
packer.reset()
packer.startup( function()
    use 'wbthomason/packer.nvim'
    use "tpope/vim-dadbod"
    use "kristijanhusak/vim-dadbod-ui"
    use "lukas-reineke/indent-blankline.nvim"
    use 'lukas-reineke/onedark.nvim'
    use 'mhinz/vim-startify'
    use 'tpope/vim-fugitive'
    use 'jiangmiao/auto-pairs'
    use 'alvan/vim-closetag'
    use 'tpope/vim-surround'
    use 'ryanoasis/vim-webdevicons'
    use 'kyazdani42/nvim-web-devicons'
    use 'easymotion/vim-easymotion'
    use 'dart-lang/dart-vim-plugin'
    use 'thosakwe/vim-flutter'
    use 'tveskag/nvim-blame-line'
    use 'mxw/vim-jsx'
    use 'maxmellon/vim-jsx-pretty'
    use "savq/melange"
    use "junegunn/fzf.vim"
    use 'numToStr/Comment.nvim'
    use 'tamton-aquib/staline.nvim'
    use "pangloss/vim-javascript"
    use 'chentau/marks.nvim'
    use {"akinsho/toggleterm.nvim"}
    use {'smolck/nvim-todoist.lua', requires= {'nvim-lua/plenary.nvim' } }
    use 'rcarriga/nvim-notify'
    use {'kaicataldo/material.vim', branch='main' }
    use {'neoclide/coc.nvim', branch='release'}
    use {'alvarosevilla95/luatab.nvim', requires='kyazdani42/nvim-web-devicons' }
    use {'ms-jpq/chadtree', branch='chad', config='python3 -m chadtree deps'}
    use {'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' }, tag = 'release' }
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
    -- use { 'romgrk/barbar.nvim', requires = {'kyazdani42/nvim-web-devicons'} }
    -- use 'liuchengxu/eleline.vim' -- current status line
    -- use 'tiagofumo/dart-vim-flutter-layout.git'
end)
