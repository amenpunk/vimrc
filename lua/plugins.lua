local use = require 'packer'.use

require 'packer'.init {
  ensure_dependencies  = true, -- Should packer install plugin dependencies?
  plugin_package       = 'packer', -- The default package for plugins
  max_jobs             = nil, -- Limit the number of simultaneous jobs. nil means no limit
  auto_clean           = true, -- During sync(), remove unused plugins
  compile_on_sync      = true, -- During sync(), run packer.compile()
  disable_commands     = false, -- Disable creating commands
  opt_default          = false, -- Default to using opt (as opposed to start) plugins
  transitive_opt       = true, -- Make dependencies of opt plugins also opt by default
  transitive_disable   = true, -- Automatically disable dependencies of disabled plugins
  auto_reload_compiled = true, -- Automatically reload the compiled file after creating it.
  git                  = {
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
  display              = {
    non_interactive = false, -- If true, disable display windows for all operations
    open_fn         = nil, -- An optional function to open a window for packer's display
    open_cmd        = '65vnew \\[packer\\]', -- An optional command to open a window for packer's display
    working_sym     = '⟳', -- The symbol for a plugin being installed/updated
    error_sym       = '✗', -- The symbol for a plugin with an error in installation/updating
    done_sym        = '✓', -- The symbol for a plugin which has completed installation/updating
    removed_sym     = '-', -- The symbol for an unused plugin which was removed
    moved_sym       = '→', -- The symbol for a plugin which was moved (e.g. from opt to start)
    header_sym      = '━', -- The symbol for the header line in packer's display
    show_all_info   = true, -- Should packer show all update details automatically?
    prompt_border   = 'double', -- Border style of prompt popups.
    keybindings     = { -- Keybindings for the display window
      quit = 'q',
      toggle_info = '<CR>',
      diff = 'd',
      prompt_revert = 'r',
    }
  },
  luarocks             = {
    python_cmd = 'python3' -- Set the python command to use for running hererocks
  },
  log                  = { level = 'warn' }, -- The default print log level. One of: "trace", "debug", "info", "warn", "error", "fatal".
  profile              = {
    enable = false,
    threshold = 1, -- integer in milliseconds, plugins which load faster than this won't be shown in profile output
  }

}


require 'packer'.startup(function()
  --use "rebelot/kanagawa.nvim"
  --use 'phanviet/vim-monokai-pro'
  --use 'dart-lang/dart-vim-plugin'
  --use 'thosakwe/vim-flutter'
  --use 'rcarriga/nvim-notify'
  --use 'bluz71/vim-moonfly-colors'
  -- use 'nvim-lua/popup.nvim'
  use 'mfussenegger/nvim-dap'
  use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }
  --use 'folke/lsp-colors.nvim'
  --use 'tanvirtin/monokai.nvim'
  --use 'alvan/vim-closetag'
  use 'kajamite/vim-monokai2'
  use { "ellisonleao/gruvbox.nvim" }
  --use "windwp/nvim-autopairs"
  use 'wbthomason/packer.nvim'
  use { 'nvim-treesitter/nvim-treesitter' }
  use "tpope/vim-dadbod"
  use 'kristijanhusak/vim-dadbod-completion'
  use "kristijanhusak/vim-dadbod-ui"
  use "lukas-reineke/indent-blankline.nvim"
  use 'mhinz/vim-startify'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-surround'
  use 'ryanoasis/vim-webdevicons'
  use 'kyazdani42/nvim-web-devicons'
  use 'easymotion/vim-easymotion'
  use 'tveskag/nvim-blame-line'
  use 'mxw/vim-jsx'
  use 'yuezk/vim-js'
  use 'maxmellon/vim-jsx-pretty'
  use "junegunn/fzf.vim"
  use { 'weilbith/nvim-code-action-menu', cmd = 'CodeActionMenu', }
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }
  use "pangloss/vim-javascript"
  use 'chentoast/marks.nvim'
  use { "akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end }

  use 'famiu/bufdelete.nvim'
 -- use 'gregsexton/matchtag'
  --use 'windwp/nvim-ts-autotag'
  --use { 'ms-jpq/chadtree', branch = 'chad' }
  use { 'kaicataldo/material.vim', branch = 'main' }
  use { 'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons' }
  use { "folke/todo-comments.nvim", requires = "nvim-lua/plenary.nvim" }
  use { 'nvim-telescope/telescope.nvim', requires = { { 'nvim-lua/plenary.nvim' } } }
  use { 'neovim/nvim-lspconfig', 'williamboman/nvim-lsp-installer' }

  --- LSP plugins
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'
  use "hrsh7th/nvim-cmp"
  use 'hrsh7th/cmp-cmdline'
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-nvim-lua"
  use "hrsh7th/cmp-nvim-lsp"

  use {'dsznajder/vscode-es7-javascript-react-snippets',
    run = 'yarn install --frozen-lockfile && yarn compile'
  }
  
  -- use "rafamadriz/friendly-snippets" --  FIX:
  use "saadparwaiz1/cmp_luasnip"
  use "L3MON4D3/LuaSnip"

  use "onsails/lspkind-nvim"
  use "hrsh7th/cmp-nvim-lsp-signature-help"


  use {
    'tanvirtin/vgit.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    }
  }

  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require('trouble').setup {
        position = "bottom", -- position of the list can be: bottom, top, left, right
        mode = 'workspace_diagnostics',
        signs = {
          error = ' ',
          warning = ' ',
          hint = ' ',
          information = ' '
        }
      }
    end

  }

  use { 'nyoom-engineering/oxocarbon.nvim' }
  use 'm4xshen/autoclose.nvim'
  use {'srcery-colors/srcery-vim', as = 'srcery'}

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  use 'navarasu/onedark.nvim'
  use 'phanviet/vim-monokai-pro'
  use 'https://gitlab.com/__tpb/monokai-pro.nvim'
  -- use 'bluz71/vim-mistfly-statusline'
  use 'tribela/vim-transparent'
  use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }
end)
