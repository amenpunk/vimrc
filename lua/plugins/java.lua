return {
  {
    "nvim-java/nvim-java",
    opts = {
      -- Startup checks
      checks = {
        nvim_version = true,
        nvim_jdtls_conflict = true,
      },

      -- JDTLS configuration
      jdtls = {
        version = "1.43.0",
      },

      -- Extensions
      lombok = {
        enable = true,
        version = "1.18.40",
      },

      java_test = {
        enable = true,
        version = "0.40.1",
      },

      java_debug_adapter = {
        enable = true,
        version = "0.58.2",
      },

      spring_boot_tools = {
        enable = true,
        version = "1.55.1",
      },

      -- JDK installation
      jdk = {
        auto_install = true,
        version = "17",
      },

      -- Logging
      log = {
        use_console = true,
        use_file = true,
        level = "info",
        log_file = vim.fn.stdpath("state") .. "/nvim-java.log",
        max_lines = 1000,
        show_location = false,
      },
    },
    config = function(_, opts)
      require("java").setup(opts)
      -- vim.lsp.enable is neovim 0.11+; pcall or fallback to lspconfig
      if vim.lsp.enable then
        pcall(vim.lsp.enable, "jdtls")
      else
        require("lspconfig").jdtls.setup({})
      end
    end,
  },
}
