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
-- packer.reset()
packer.startup( function()

    use "rebelot/kanagawa.nvim"
    use 'wbthomason/packer.nvim'
    use {'nvim-treesitter/nvim-treesitter', run=':TSUpdate'}
    use 'phanviet/vim-monokai-pro'
    use "tpope/vim-dadbod"
    use "kristijanhusak/vim-dadbod-ui"
    use "lukas-reineke/indent-blankline.nvim"
    use 'mhinz/vim-startify'
    use 'tpope/vim-fugitive'
    use 'alvan/vim-closetag'
    use 'tpope/vim-surround'
    use 'ryanoasis/vim-webdevicons'
    use 'kyazdani42/nvim-web-devicons'
    use 'easymotion/vim-easymotion'
    use 'dart-lang/dart-vim-plugin'
    use 'thosakwe/vim-flutter'
    use 'tveskag/nvim-blame-line'
    use 'mxw/vim-jsx'
    use 'yuezk/vim-js'
    use 'maxmellon/vim-jsx-pretty'
    use "junegunn/fzf.vim"
    use 'numToStr/Comment.nvim'
    use "pangloss/vim-javascript"
    use 'chentau/marks.nvim'
    use {"akinsho/toggleterm.nvim"}
    use 'rcarriga/nvim-notify'
    use 'famiu/bufdelete.nvim'
    use 'gregsexton/matchtag'
    use 'nvim-lua/popup.nvim'
    use {'kaicataldo/material.vim', branch='main' }
    use 'kyazdani42/nvim-tree.lua'
    use {'ms-jpq/chadtree', branch='chad'}
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
    use { "folke/todo-comments.nvim", requires = "nvim-lua/plenary.nvim" }
    use { 'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} } }
    --- colorscheme
    use 'bluz71/vim-moonfly-colors'
    use {
        'neovim/nvim-lspconfig',
        'williamboman/nvim-lsp-installer',
    }

    -- use 'tamton-aquib/staline.nvim'
    --- LSP plugins
    -- Completition
    use 'hrsh7th/cmp-cmdline'
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-path"
    use "hrsh7th/cmp-nvim-lua"
    use "hrsh7th/cmp-nvim-lsp"
    use "saadparwaiz1/cmp_luasnip"
    use "onsails/lspkind-nvim"
    use "hrsh7th/cmp-nvim-lsp-signature-help"
    use "windwp/nvim-autopairs"
    use 'L3MON4D3/LuaSnip'
    use({
        "catppuccin/nvim",
        as = "catppuccin"
    })
    use 'folke/lsp-colors.nvim'

    use {
        'tanvirtin/vgit.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        }
    }

    use {
        'weilbith/nvim-code-action-menu',
        cmd = 'CodeActionMenu',
    }

    use 'tanvirtin/monokai.nvim'
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require( 'trouble' ).setup {
                action_keys = {
                    toggle_fold = { '<Space>' }
                },
                signs = {
                    error = ' ',
                    warning = ' ',
                    hint = ' ',
                    information = ' '
                }
            }
        end

    }

end)
