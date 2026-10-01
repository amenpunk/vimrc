local ls_to_exec_map = {
  cssls = "vscode-css-language-server",
  jsonls = "vscode-json-language-server",
  lua_ls = "lua-language-server",
  marksman = "marksman",
  ts_ls = "typescript-language-server",
  tsserver = "typescript-language-server",
  phpactor = "phpactor",
  psalm = "psalm",
  intelephense = "intelephense",
  pyright = "pyright",
  pylsp = "pylsp",
  graphql = "graphql",
  terraform = "terraform-ls",
}

return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.servers = opts.servers or {}

      -- disable installation from mason if the executable is available in the system already
      for server, exec_name in pairs(ls_to_exec_map) do
        if not opts.servers[server] then
          opts.servers[server] = {}
        end

        if vim.fn.executable(exec_name) == 1 then
          opts.servers[server].mason = false
        end
      end

      opts.diagnostics = opts.diagnostics or {}
      opts.diagnostics.signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = LazyVim.config.icons.diagnostics.Error,
          [vim.diagnostic.severity.WARN] = LazyVim.config.icons.diagnostics.Warn,
          [vim.diagnostic.severity.HINT] = LazyVim.config.icons.diagnostics.Hint,
          [vim.diagnostic.severity.INFO] = LazyVim.config.icons.diagnostics.Info,
        },
      }

      return opts
    end,
  },
}
