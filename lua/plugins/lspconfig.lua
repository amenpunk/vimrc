local ls_to_exec_map = {
  cssls = "vscode-css-language-server",
  jsonls = "vscode-json-language-server",
  lua_ls = "lua-language-server",
  marksman = "marksman",
  tsserver = "typescript-language-server",
  phpactor = "phpactor",
  psalm = "psalm",
  intelephense = "intelephense",
  pyright = "pyright",
  pylsp = "pyslp",
  graphql = "graphql",
}

return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      -- disable installation from mason if the executable is available in the
      -- systemt already
      for server, exec_name in pairs(ls_to_exec_map) do
        -- if the server config not found, enable the server
        if not opts.servers[server] then
          opts.servers[server] = {}
        end

        if vim.fn.executable(exec_name) then
          opts.servers[server].mason = false
        end
      end

      -- opts.inlay_hints = {
      --   enabled = true,
      -- }
      --
      opts.diagnostics = {
        virtual_lines = {
          prefix = "",
          spacing = 2,
        },
        underline = true,
        --update_in_insert = true,
        --severity_sort = true,
        -- float = {
        --   border = "single",
        --   format = function(diagnostic)
        --     return string.format(
        --       "%s (%s) [%s]",
        --       diagnostic.message,
        --       diagnostic.source,
        --       diagnostic.code or diagnostic.user_data.lsp.code
        --     )
        --   end,
        -- },
        signs = {
          lines = {
            [vim.diagnostic.severity.ERROR] = LazyVim.config.icons.diagnostics.Error,
            [vim.diagnostic.severity.WARN] = LazyVim.config.icons.diagnostics.Warn,
            [vim.diagnostic.severity.HINT] = LazyVim.config.icons.diagnostics.Hint,
            [vim.diagnostic.severity.INFO] = LazyVim.config.icons.diagnostics.Info,
          },
          text = {
            [vim.diagnostic.severity.ERROR] = LazyVim.config.icons.diagnostics.Error,
            [vim.diagnostic.severity.WARN] = LazyVim.config.icons.diagnostics.Warn,
            [vim.diagnostic.severity.HINT] = LazyVim.config.icons.diagnostics.Hint,
            [vim.diagnostic.severity.INFO] = LazyVim.config.icons.diagnostics.Info,
          },
        },
      }

      return opts
    end,
  },
}
