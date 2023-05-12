-- TODO:
-- setup all lsp servers here

require('servers.javascript')
require('servers.java')

local on_attach = function(client, bufnr)
  local function buf_set_keymap(...)
    vim.api.nvim_buf_set_keymap(bufnr, ...)
  end
  local function buf_set_option(...)
    vim.api.nvim_buf_set_option(bufnr, ...)
  end

  buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

  local opts = { noremap = true, silent = true }

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

---@diagnostic disable-next-line: undefined-global
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)
--
--
require("lspconfig")["jdtls"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

require("lspconfig")["lua_ls"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
})


require("lspconfig")["tsserver"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

require("lspconfig")["phpactor"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

require("lspconfig")["jsonls"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
