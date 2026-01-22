return {
  "rcarriga/nvim-dap-ui",
  dependencies = {
    "jay-babu/mason-nvim-dap.nvim",
    "mfussenegger/nvim-dap",
    "nvim-neotest/nvim-nio",
    "mason-org/mason.nvim",
  },
  config = function()
    local configurations = require("plugins.dap.config")
    local ui = require("dapui")
    local dap = require("dap")
    configurations.setup(dap)

    vim.keymap.set("n", "<F5>", function() require("dap").continue() end, { desc = "Debug: Start/Continue" })
    vim.keymap.set("n", "<F6>", function() require("dap").step_over() end, { desc = "Debug: Step Over" })
    vim.keymap.set("n", "<F7>", function() require("dap").step_into() end, { desc = "Debug: Step Into" })
    vim.keymap.set("n", "<F8>", function() require("dap").step_out() end, { desc = "Debug: Step Out" })
    vim.keymap.set("n", "<leader>b", function() require("dap").toggle_breakpoint() end, { desc = "Debug: Toggle Breakpoint" })
    vim.keymap.set("n", "<leader>du", function() require("dapui").toggle() end, { desc = "Debug: Toggle UI" })

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
