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
      init = function()
        -- override the default keymaps.
        -- needed until neotest-java is integrated in LazyVim
        local keys = require("lazyvim.plugins.lsp.keymaps").get()
        -- run test file
        keys[#keys + 1] = {
          "<leader>tt",
          function()
            require("neotest").run.run(vim.fn.expand("%"))
          end,
          mode = "n",
        }
        -- run nearest test
        keys[#keys + 1] = {
          "<leader>tr",
          function()
            require("neotest").run.run()
          end,
          mode = "n",
        }
        -- debug test file
        keys[#keys + 1] = {
          "<leader>tD",
          function()
            require("jdtls.dap").test_class()
          end,
          mode = "n",
        }
        -- debug nearest test
        keys[#keys + 1] = {
          "<leader>td",
          function()
            require("jdtls.dap").test_nearest_method()
          end,
          mode = "n",
        }
      end,
    },
    keys = {
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
        "<cmd>lua require('neotest').run.run({ jestCommand = 'jest --watch ' })<cr>",
        desc = "Run Watch",
      },
    },
    opts = function(_, opts)
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
