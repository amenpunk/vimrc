local use = require 'packer'.use
require("pack")

require 'packer'.startup(function()
  use 'patstockwell/vim-monokai-tasty'
  use 'wbthomason/packer.nvim'
  use 'mfussenegger/nvim-dap'
  use 'rcarriga/cmp-dap'
  use "nvim-neotest/nvim-nio"
  use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
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
  use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }
  use 'mxw/vim-jsx'
  use 'yuezk/vim-js'
  use 'maxmellon/vim-jsx-pretty'
  use "pangloss/vim-javascript"
  use "jose-elias-alvarez/null-ls.nvim"
  use 'anuvyklack/hydra.nvim'
  use 'nvim-treesitter/nvim-treesitter-refactor'

  -- -- NOTE: java config
  --
  -- use 'nvim-java/nvim-java'
  -- use 'nvim-java/lua-async-await'
  -- use 'nvim-java/nvim-java-core'
  -- use 'nvim-java/nvim-java-test'
  -- use 'nvim-java/nvim-java-dap'
  -- use 'MunifTanjim/nui.nvim'
  -- use {
  --   'williamboman/mason.nvim',
  --   opts = {
  --     registries = {
  --       'github:nvim-java/mason-registry',
  --       'github:mason-org/mason-registry',
  --     },
  --   },
  -- }
  --
  -- NOTE: themes:

  use "cpea2506/one_monokai.nvim"
  use { "ellisonleao/gruvbox.nvim" }
  use 'https://gitlab.com/__tpb/monokai-pro.nvim'
  use { 'kaicataldo/material.vim', branch = 'main' }
  use "felipeagc/fleet-theme-nvim"
  use 'navarasu/onedark.nvim'
  use "rebelot/kanagawa.nvim"
  use 'bluz71/vim-moonfly-colors'
  use { 'nyoom-engineering/oxocarbon.nvim' }
  use 'nyngwang/nvimgelion'
  use 'rileytwo/kiss'

  -- use({
  --   'NTBBloodbath/doom-one.nvim',
  --   setup = function()
  --     -- Add color to cursor
  --     vim.g.doom_one_cursor_coloring = false
  --     -- Set :terminal colors
  --     vim.g.doom_one_terminal_colors = true
  --     -- Enable italic comments
  --     vim.g.doom_one_italic_comments = false
  --     -- Enable TS support
  --     vim.g.doom_one_enable_treesitter = true
  --     -- Color whole diagnostic text or only underline
  --     vim.g.doom_one_diagnostics_text_color = false
  --     -- Enable transparent background
  --     vim.g.doom_one_transparent_background = false
  --
  --     -- Pumblend transparency
  --     vim.g.doom_one_pumblend_enable = false
  --     vim.g.doom_one_pumblend_transparency = 20
  --
  --     -- Plugins integration
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
  --     -- vim.cmd("colorscheme doom-one")
  --   end,
  -- })
  -- use 'cseelus/vim-colors-lucid'
  -- use {'srcery-colors/srcery-vim', as = 'srcery'}
  -- use 'phanviet/vim-monokai-pro'
  --use 'phanviet/vim-monokai-pro'
  --use 'dart-lang/dart-vim-plugin'
  --use 'thosakwe/vim-flutter'
  --use 'rcarriga/nvim-notify'
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
  -- use 'bluz71/vim-mistfly-statusline'
  -- use 'tribela/vim-transparent'
end)
