require('servers.javascript')
require('servers.java')
require('servers.php')

local on_attach = function(client, bufnr)
  client.server_capabilities.semanticTokensProvider = nil

  local function buf_set_keymap(...)
    vim.api.nvim_buf_set_keymap(bufnr, ...)
  end
  local function buf_set_option(...)
    vim.api.nvim_buf_set_option(bufnr, ...)
  end

  buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

  local opts = { noremap = true, silent = true }
  --
  buf_set_keymap("n", "gd", ":lua vim.lsp.buf.definition()<CR>", opts)
  buf_set_keymap("n", "<leader>lh", ":lua vim.lsp.buf.hover()<CR>", opts)
  buf_set_keymap("n", "gi", ":lua vim.lsp.buf.implementation()<CR>", opts)
  buf_set_keymap("n", "<leader>rn", ":lua vim.lsp.util.rename()<CR>", opts)
  buf_set_keymap("n", "<leader>ca", ":lua vim.lsp.buf.code_action()<CR>", opts)
  buf_set_keymap("n", "gr", ":lua vim.lsp.buf.references()<CR>", opts)
  buf_set_keymap("n", "<leader>ld", ":lua vim.diagnostic.open_float()<CR>", opts)
  buf_set_keymap("n", "[d", ":lua vim.diagnostic.goto_prev()<CR>", opts)
  buf_set_keymap("n", "]d", ":lua vim.diagnostic.goto_next()<CR>", opts)
  buf_set_keymap("n", "<leader>lq", ":lua vim.diagnostic.setloclist()<CR>", opts)
  buf_set_keymap("n", "<leader>lf", ":lua vim.lsp.buf.formatting()<CR>", opts)
end


local dap, dapui = require("dap"), require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

local servers = {
  'jdtls', 'tsserver', 'lua_ls',
  'jsonls', 'psalm', --'phpactor',
  'unocss', 'cssls', 'intelephense',
  'cssmodules_ls'
}

for k, v in pairs(servers) do
  require("lspconfig")[v].setup({
    on_attach = on_attach,
    capabilities = capabilities,
  })
end
