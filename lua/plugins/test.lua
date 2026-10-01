return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
      "haydenmeade/neotest-jest",
      "marilari88/neotest-vitest",
      "rcasia/neotest-java",
    },
    keys = {
      {
        "<leader>tt",
        function()
          require("neotest").run.run(vim.fn.expand("%"))
        end,
        desc = "Run Test File",
      },
      {
        "<leader>tr",
        function()
          require("neotest").run.run()
        end,
        desc = "Run Nearest Test",
      },
      {
        "<leader>tl",
        function()
          require("neotest").run.run_last()
        end,
        desc = "Run Last Test",
      },
      {
        "<leader>tL",
        function()
          require("neotest").run.run_last({ strategy = "dap" })
        end,
        desc = "Debug Last Test",
      },
      {
        "<leader>tw",
        function()
          require("neotest").run.run({ jestCommand = "jest --watch " })
        end,
        desc = "Run Watch",
      },
      {
        "<leader>tD",
        function()
          require("jdtls.dap").test_class()
        end,
        desc = "Debug Test Class (Java)",
      },
      {
        "<leader>td",
        function()
          require("jdtls.dap").test_nearest_method()
        end,
        desc = "Debug Nearest Method (Java)",
      },
    },
    opts = function(_, opts)
      opts.adapters = opts.adapters or {}
      table.insert(
        opts.adapters,
        require("neotest-jest")({
          jestCommand = "npm test --",
          jestConfigFile = "custom.jest.config.ts",
          env = { CI = true },
          cwd = function()
            return vim.fn.getcwd()
          end,
        })
      )
      table.insert(opts.adapters, require("neotest-java"))
      table.insert(opts.adapters, require("neotest-vitest"))
    end,
  },
}
