local ls_to_exec_map = {
  cssls = "vscode-css-language-server",
  jsonls = "vscode-json-language-server",
  lua_ls = "lua-language-server",
  marksman = "marksman",
  tsserver = "typescript-language-server",
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

      return opts
    end,
  },
}
