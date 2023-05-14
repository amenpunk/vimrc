require("toggleterm").setup {
  size = 10,
  open_mapping = [[<Leader><Enter>]],
  hide_numbers = true, -- hide the number column in toggleterm buffers
  shade_terminals = true,
  start_in_insert = true,
  insert_mappings = true, -- whether or not the open mapping applies in insert mode
  persist_size = true,
  direction = 'float',
  close_on_exit = true, -- close the terminal window when the process exits
  float_opts = {
    border = 'curved', --//'double' |'shadow'|'curved'|
    winblend = 1,
    highlights = {
      border = "Normal",
      background = "Normal",
    }
  }
  --
}
--
require 'marks'.setup {
  default_mappings = true,
  builtin_marks = {},
  cyclic = true,
  force_write_shada = false,
  refresh_interval = 250,
  sign_priority = { lower = 10, upper = 15, builtin = 8, bookmark = 20 },
  excluded_filetypes = {},
  bookmark_0 = {
    sign = "⚑",
  },
  mappings = {}
}

require 'nvim-treesitter.configs'.setup {
  -- ensure_installed = { "help", "javascript", "html", "php", "css", "html", "lua", "java", "python", "typescript" },
  sync_install = false,
  auto_install = false,
  indent = {
    enable = true
  },
  incremental_selection = {
    enable = true,
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false
  },
}
--
require 'Comment'.setup {
  -- padding = true,
  -- sticky = true,
  -- ignore = nil,
  -- toggler = {
  --     line = 'gcc',
  --     block = 'gbc',
  -- },
  --
  -- opleader = {
  --     line = 'gc',
  --     block = 'gb',
  -- },
  -- extra = {
  --     above = 'gcO',
  --     below = 'gco',
  --     eol = 'gcA',
  -- },
  -- mappings = {
  --     basic = true,
  --     extra = true,
  --     extended = false,
  -- },
  -- pre_hook = nil,
  -- post_hook = nil,
}
--
require("bufferline").setup {
  options = {
    numbers     = "ordinal",
    diagnostics = "nvim_lsp"
  }
}

require('Comment').setup()
-- require('nvim-autopairs').setup {}

require("indent_blankline").setup {
  space_char_blankline = " ",
  -- show_current_context = true,
  -- show_current_context_start = true,
  buftype_exclude = { "terminal", "chadtree", "scratch", "dbui" },
  filetype_exclude = { "dashboard", "chadtree", 'scratch', 'packer', 'dbui' },
}
--
local actions = require "telescope.actions"

require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ["<c-j>"] = actions.move_selection_next,
        ["<c-k>"] = actions.move_selection_previous
      }
    }
  },
}

require("todo-comments").setup {}

-- local lsp_installer = require("nvim-lsp-installer")
--
-- lsp_installer.on_server_ready(function(server)
--   local opts = {}
--   server:setup(opts)
-- end)

--- good config
local signs = {
  Error = " ",
  Warn = " ",
  Hint = " ",
  Info = " "
}

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end


--- arreglar este plugin
require('vgit').setup()
require("nvim-tree").setup({
  update_focused_file = {
    enable = true,
    update_cwd = true,
    update_root = true,
    ignore_list = {},
  },
  auto_reload_on_write = true,
  create_in_closed_folder = false,
  disable_netrw = false,
  hijack_cursor = false,
  hijack_netrw = true,
  hijack_unnamed_buffer_when_opening = false,
  ignore_buffer_on_setup = false,
  open_on_setup = false,
  open_on_setup_file = false,
  open_on_tab = false,
  sort_by = "name",
  --root_dirs = {},
  prefer_startup_root = false,
  --sync_root_with_cwd = true,
  reload_on_bufenter = false,
  respect_buf_cwd = false,
  view = {
    side = 'left',
    width = 27,
    adaptive_size = false,
    hide_root_folder = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
})

-- require('onedark').load()

-- require('onedark').setup {
--   style = 'warmer', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
--   transparent = true, -- Show/hide background
--   term_colors = true, -- Change terminal color as per the selected theme style
--   ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
--   cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
--   toggle_style_key = '<leader>ts', -- Default keybinding to toggle
--   toggle_style_list = { 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light' }, -- List of styles to toggle between
--   code_style = {
--     comments = 'italic',
--     keywords = 'none',
--     functions = 'none',
--     strings = 'none',
--     variables = 'none'
--   },
--   diagnostics = {
--     darker = true, -- darker colors for diagnostic
--     undercurl = true, -- use undercurl instead of underline for diagnostics
--     background = true, -- use background color for virtual text
--   }
-- }

--[[ require("lsp-colors").setup({
  Error = "#db4b4b",
  Warning = "#e0af68",
  Information = "#0db9d7",
  Hint = "#10B981"
}) ]]

require 'nvim-treesitter.configs'.setup {
  autotag = {
    enable = true,
  }
}

vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics,
  {
    underline = true,
    virtual_text = {
      spacing = 5,
      severity_limit = 'Warning',
    },
    update_in_insert = true,
  }
)


require("dapui").setup()
require("autoclose").setup({})
require'hop'.setup()
require("mason").setup()
require("mason-lspconfig").setup()

local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.diagnostics.eslint,
        null_ls.builtins.completion.spell,
    },
})

