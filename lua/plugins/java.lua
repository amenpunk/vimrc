-- local f = require("utils.file").is_pkg_dir
--
-- return {
--   "williamboman/mason-lspconfig.nvim",
--   dependencies = {
--     {
--       "williamboman/mason.nvim",
--       opts = {
--         registries = {
--           "github:nvim-java/mason-registry",
--           "github:mason-org/mason-registry",
--         },
--       },
--     },
--
--     {
--       "nvim-java/nvim-java",
--       dir = f("~/Workspace/nvim-java"),
--       opts = {
--         jdk = {
--           auto_install = true,
--         },
--         notifications = {
--           dap = true,
--         },
--       },
--       dependencies = {
--
--         {
--           "nvim-java/lua-async-await",
--           dir = f("~/workspace/java/lua-async-await"),
--         },
--         {
--           "nvim-java/nvim-java-core",
--           dir = f("~/workspace/java/nvim-java-core"),
--         },
--         {
--           "nvim-java/nvim-java-test",
--           dir = f("~/workspace/java/nvim-java-test"),
--         },
--         {
--           "nvim-java/nvim-java-dap",
--           dir = f("~/workspace/java/nvim-java-dap"),
--         },
--         {
--           "nvim-java/nvim-java-refactor",
--           dir = f("~/workspace/java/nvim-java-refactor"),
--         },
--         "MunifTanjim/nui.nvim",
--         "neovim/nvim-lspconfig",
--         "mfussenegger/nvim-dap",
--       },
--     },
--   },
--   opts = {
--     handlers = {
--       ["jdtls"] = function()
--         require("lspconfig").jdtls.setup({})
--       end,
--     },
--   },
-- }
return {
  "nvim-java/nvim-java",
  config = false,
  dependencies = {
    {
      "neovim/nvim-lspconfig",
      opts = {
        servers = {
          jdtls = {
            -- Your custom jdtls settings goes here
          },
        },
        setup = {
          jdtls = function()
            require("java").setup({
              -- Your custom nvim-java configuration goes here
            })
          end,
        },
      },
    },
  },
}
