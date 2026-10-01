return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        lua = { "stylua", "luaformatter" },
        python = { "blue", "jupytext" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        graphql = { "prettier" },
        php = { "pint" },
        yaml = { "yamlfix" },
        html = { "prettier", "prettierd" },
        tf = { "tflint", "tfsec", "terraform" },
        terraform = { "tflint", "tfsec", "terraform" },
      },
    },
  },
}
