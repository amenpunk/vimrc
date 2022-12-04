local lspkind = require "lspkind"
lspkind.init()

local luasnip = require("luasnip")
local cmp = require "cmp"
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done({  map_char = { tex = '' } }))

cmp.setup {
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    mapping = {
        ['<Tab>'] = function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            else
                fallback()
            end
        end,


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

    cmp.setup.cmdline(':', {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
            { name = 'path' }
        },
        {
            { name = 'cmdline' }
        })
    }),

    experimental = {
        -- native_menu = true,
        ghost_text = true,
    }
}

vim.cmd[[
  autocmd FileType sql,mysql,plsql lua require('cmp').setup.buffer({ sources = {{ name = 'vim-dadbod-completion' }} })
]]

vim.cmd[[
nnoremap * :keepjumps normal! mi*`i<CR>
]]


