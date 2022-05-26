local use = require'packer'.use

require'packer'.startup( function()

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
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
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
