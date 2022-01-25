-- local function on_attach()
--     -- keymaps for lsp
--     vim.api.nvim_set_keymap('n', 'K', ':lua vim.lsp.buf.hover()<cr>', {noremap = true})
--     vim.api.nvim_set_keymap('n', '<leader>vd', ':lua vim.lsp.buf.definition()<cr>', {noremap = true})
--
--
--     vim.api.nvim_set_keymap('n', '<leader>vo', ':LspRestart<cr>', {noremap = true})
--
--     -- diagnostics to move between info and errors
--     vim.api.nvim_set_keymap('n', '<leader>vn', ':lua vim.lsp.diagnostic.goto_next()<cr>', {noremap = true})
--     vim.api.nvim_set_keymap('n', '<leader>vp', ':lua vim.lsp.diagnostic.goto_prev()<cr>', {noremap = true})
--
--
--     vim.api.nvim_set_keymap('n', '<leader>vca', ':lua vim.lsp.buf.code_action()<cr>', {noremap = true})
--     vim.api.nvim_set_keymap('n', '<leader>vf', ':lua vim.lsp.buf.formatting()<cr>', {noremap = true})
--
--     vim.api.nvim_set_keymap('n', '<leader>vi', ':lua vim.lsp.buf.implementation()<cr>', {noremap = true})
--     vim.api.nvim_set_keymap('n', '<leader>vrn', ':lua vim.lsp.buf.rename()<cr>', {noremap = true})
--
--     require "lsp_signature".on_attach()
--
--     vim.cmd [[au Filetype php setl omnifunc=v:lua.vim.lsp.omnifunc]]
--     vim.cmd [[autocmd FileType go setlocal omnifunc=v:lua.vim.lsp.omnifunc]]
--
--     vim.g.completion_matching_strategy_list = { 'exact', 'substring', 'fuzzy' }
--
-- end
--
-- local lsp_installer = require("nvim-lsp-installer")
--
-- lsp_installer.on_server_ready(function(server)
--     local opts = {}
--
--     opts.on_attach = on_attach
--     -- This setup() function is exactly the same as lspconfig's setup function (:help lspconfig-quickstart)
--     server:setup(opts)
--     vim.cmd [[ do User LspAttachBuffers ]]
-- end)
--
--


local lspkind = require "lspkind"
lspkind.init()

local luasnip = require("luasnip")
local cmp = require "cmp"
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done({  map_char = { tex = '' } }))

cmp.setup {
    mapping = {
        ["<C-d>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-e>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.close()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            else
                fallback()
            end
        end, { "i", "s" }),
        ["<C-n>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.choice_active() then
                luasnip.change_choice(1)
            else
                fallback()
            end
        end, { "i", "s" }),
        ["<C-y>"] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Insert,
            select = true,
        },
        ["<c-space>"] = cmp.mapping.complete(),
    },
    sources = {
        { name = "nvim_lua" },
        { name = "nvim_lsp" },
        { name = "path" },
        { name = "luasnip" },
        {
            name = "buffer",
            keyword_length = 5,
            option = {
                get_bufnrs = function()
                    local bufs = {}
                    for _, win in ipairs(vim.api.nvim_list_wins()) do
                        bufs[vim.api.nvim_win_get_buf(win)] = true
                    end
                    return vim.tbl_keys(bufs)
                end
            }
        },
    },

    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end,
    },

    formatting = {
        format = lspkind.cmp_format {
            with_text = true,
            menu = {
                buffer = "[buf]",
                nvim_lsp = "[LSP]",
                nvim_lua = "[api]",
                path = "[path]",
                luasnip = "[snip]",
            }
        }
    },

    experimental = {
        native_menu = false,

        ghost_text = true,
    }
}
