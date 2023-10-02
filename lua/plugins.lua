local use = require 'packer'.use

require 'packer'.init {
  ensure_dependencies  = true,     -- Should packer install plugin dependencies?
  plugin_package       = 'packer', -- The default package for plugins
  max_jobs             = nil,      -- Limit the number of simultaneous jobs. nil means no limit
  auto_clean           = true,     -- During sync(), remove unused plugins
  compile_on_sync      = true,     -- During sync(), run packer.compile()
  disable_commands     = false,    -- Disable creating commands
  opt_default          = false,    -- Default to using opt (as opposed to start) plugins
  transitive_opt       = true,     -- Make dependencies of opt plugins also opt by default
  transitive_disable   = true,     -- Automatically disable dependencies of disabled plugins
  auto_reload_compiled = true,     -- Automatically reload the compiled file after creating it.
  git                  = {
    cmd = 'git',                   -- The base command for git operations
    subcommands = {
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
    depth = 1,                                   -- Git clone depth
    clone_timeout = 60,                          -- Timeout, in seconds, for git clones
    default_url_format = 'https://github.com/%s' -- Lua format string used for "aaa/bbb" style plugins
  },
  display              = {
    non_interactive = false,                 -- If true, disable display windows for all operations
    open_fn         = nil,                   -- An optional function to open a window for packer's display
    open_cmd        = '65vnew \\[packer\\]', -- An optional command to open a window for packer's display
    working_sym     = '⟳',                 -- The symbol for a plugin being installed/updated
    error_sym       = '✗',                 -- The symbol for a plugin with an error in installation/updating
    done_sym        = '✓',                 -- The symbol for a plugin which has completed installation/updating
    removed_sym     = '-',                   -- The symbol for an unused plugin which was removed
    moved_sym       = '→',                 -- The symbol for a plugin which was moved (e.g. from opt to start)
    header_sym      = '━',                 -- The symbol for the header line in packer's display
    show_all_info   = true,                  -- Should packer show all update details automatically?
    prompt_border   = 'double',              -- Border style of prompt popups.
    keybindings     = {
      quit = 'q',
      toggle_info = '<CR>',
      diff = 'd',
      prompt_revert = 'r',
    }
  },
  luarocks             = {
    python_cmd = 'python3'                   -- Set the python command to use for running hererocks
  },
  log                  = { level = 'warn' }, -- The default print log level. One of: "trace", "debug", "info", "warn", "error", "fatal".
  profile              = {
    enable = false,
    threshold = 1, -- integer in milliseconds, plugins which load faster than this won't be shown in profile output
  }

}


require 'packer'.startup(function()
  use 'wbthomason/packer.nvim'
  use 'mfussenegger/nvim-dap'
  use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }
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
  use 'phaazon/hop.nvim'
  use 'tveskag/nvim-blame-line'
  use { 'weilbith/nvim-code-action-menu', cmd = 'CodeActionMenu', }
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }
  use 'chentoast/marks.nvim'
  use { "akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end }

  use 'famiu/bufdelete.nvim'
  use { 'kaicataldo/material.vim', branch = 'main' }
  use { 'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons' }
  use { "folke/todo-comments.nvim", requires = "nvim-lua/plenary.nvim" }
  use { 'nvim-telescope/telescope.nvim', requires = { { 'nvim-lua/plenary.nvim' } } }
  use { 'neovim/nvim-lspconfig' }

  --- LSP plugins
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'
  use "hrsh7th/nvim-cmp"
  use 'hrsh7th/cmp-copilot'
  use 'hrsh7th/cmp-cmdline'
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-nvim-lua"
  use "hrsh7th/cmp-nvim-lsp"

  use { 'dsznajder/vscode-es7-javascript-react-snippets',
    run = 'yarn install --frozen-lockfile && yarn compile'
  }

  use { "williamboman/mason.nvim", }
  use { "williamboman/mason-lspconfig.nvim" }

  use "rafamadriz/friendly-snippets"
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
  use "github/copilot.vim"
  use 'm4xshen/autoclose.nvim'
  use 'arzg/vim-colors-xcode'

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly'                   -- optional, updated every week. (see issue #1193)
  }
  use 'https://gitlab.com/__tpb/monokai-pro.nvim'
  use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }
  use 'mxw/vim-jsx'
  use 'yuezk/vim-js'
  use 'maxmellon/vim-jsx-pretty'
  use { "ellisonleao/gruvbox.nvim" }
  use "pangloss/vim-javascript"
  use "jose-elias-alvarez/null-ls.nvim"
  use 'anuvyklack/hydra.nvim'
  use "cpea2506/one_monokai.nvim"
  use 'projekt0n/caret.nvim'
  -- use 'mbbill/undotree'
  -- use 'dominikduda/vim_current_word'
  -- use({
  --   'NTBBloodbath/doom-one.nvim',
  --   setup = function()
  --     vim.g.doom_one_cursor_coloring = false
  --     vim.g.doom_one_terminal_colors = true
  --     vim.g.doom_one_italic_comments = false
  --     vim.g.doom_one_enable_treesitter = true
  --     vim.g.doom_one_diagnostics_text_color = false
  --     vim.g.doom_one_transparent_background = false
  --     vim.g.doom_one_pumblend_enable = false
  --     vim.g.doom_one_pumblend_transparency = 20
  --     vim.g.doom_one_plugin_neorg = true
  --     vim.g.doom_one_plugin_barbar = false
  --     vim.g.doom_one_plugin_telescope = false
  --     vim.g.doom_one_plugin_neogit = true
  --     vim.g.doom_one_plugin_nvim_tree = true
  --     vim.g.doom_one_plugin_dashboard = true
  --     vim.g.doom_one_plugin_startify = true
  --     vim.g.doom_one_plugin_whichkey = true
  --     vim.g.doom_one_plugin_indent_blankline = true
  --     vim.g.doom_one_plugin_vim_illuminate = true
  --     vim.g.doom_one_plugin_lspsaga = false
  --   end,
  --   config = function()
  --     vim.cmd("colorscheme doom-one")
  --   end,
  -- })


  -- use {'srcery-colors/srcery-vim', as = 'srcery'}
  -- use 'navarasu/onedark.nvim'
  -- use 'phanviet/vim-monokai-pro'
  --use "rebelot/kanagawa.nvim"
  --use 'phanviet/vim-monokai-pro'
  --use 'dart-lang/dart-vim-plugin'
  --use 'thosakwe/vim-flutter'
  --use 'rcarriga/nvim-notify'
  --use 'bluz71/vim-moonfly-colors'
  -- use 'nvim-lua/popup.nvim'
  --use 'folke/lsp-colors.nvim'
  --use 'tanvirtin/monokai.nvim'
  --use 'alvan/vim-closetag'
  --use 'kajamite/vim-monokai2'
  ---use { "ellisonleao/gruvbox.nvim" }
  --use "windwp/nvim-autopairs"
  -- use "junegunn/fzf.vim"
  -- use 'gregsexton/matchtag'
  --use 'windwp/nvim-ts-autotag'
  --use { 'ms-jpq/chadtree', branch = 'chad' }
  --use { 'nyoom-engineering/oxocarbon.nvim' }
  -- use 'bluz71/vim-mistfly-statusline'
  use 'tribela/vim-transparent'
end)
