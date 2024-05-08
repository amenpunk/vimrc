return {
  "rcarriga/nvim-dap-ui",
  dependencies = {
    "jay-babu/mason-nvim-dap.nvim",
    "mfussenegger/nvim-dap",
    "nvim-neotest/nvim-nio",
    "williamboman/mason.nvim",
  },
  config = function()
    local configurations = require("plugins.dap.config")
    local ui = require("dapui")
    local dap = require("dap")
    configurations.setup(dap)
    ui.setup({
      icons = { expanded = "▾", collapsed = "▸" },
      mappings = {
        expand = { "<CR>", "<2-LeftMouse>" },
        open = "o",
        remove = "d",
        edit = "e",
        repl = "r",
        toggle = "t",
      },
      layouts = {
        {
          elements = {
            "scopes",
          },
          size = 0.3,
          position = "right",
        },
        {
          elements = {
            "repl",
            "breakpoints",
          },
          size = 0.3,
          position = "bottom",
        },
      },
      floating = {
        -- max_height = nil,
        -- max_width = nil,
        border = "single",
        mappings = {
          close = { "q", "<Esc>" },
        },
      },
      windows = { indent = 1 },
      render = {
        max_type_length = nil,
      },
    })
  end,
}
