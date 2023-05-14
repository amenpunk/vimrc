local map = vim.api.nvim_set_keymap
local options = { noremap = true }
local snip_opts = { noremap = true, silent = true  }

--luasnip
map("i", "<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", snip_opts)
map("s", "<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", snip_opts)
map("i", "<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", snip_opts)
map("s", "<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", snip_opts)

-- map the leader key
map('n', '<Space>', '', {})
map('n', '<leader>r', ':source $MYVIMR<CR>', {silent=true, noremap=true}) -- reload config
-- nnoremap <silent> <Leader><Leader> :source $MYVIMRC<cr>
vim.g.mapleader = ' '
vim.g.code_action_menu_window_border = 'single'


map('n', '<leader>q', ':q!<CR>', options)
map('n', '<leader>v', 'gv<CR>', options)
map('', '<C-p>', '<cmd>Telescope find_files<cr>', options)

--- lsp config
--

map('n','==',':lua vim.lsp.buf.format({ async = true} )<CR>', options)
map('n', 'gd', ':lua vim.lsp.buf.definition()<cr>', options)
map('n', 'gi', ':lua vim.lsp.buf.references()<CR>', options)
--map('n', '<C-space>', ':lua vim.lsp.buf.code_action()<CR>', options)
map('n', '<C-space>', ':CodeActionMenu<CR>', options)
map('n', '<leader>e', ':lua vim.diagnostic.open_float()<CR>', options)
map('n', '<C-,>', ':lua vim.lsp.buf.hover()<cr>', options)
--- lsp config


--- GIT CONFIF
 map('n', '<leader>g', ':Git<CR>', options)
 map('n', 'gs', ':VGit buffer_hunk_preview<CR>', options)
 map('n', 'gh', ':VGit buffer_history_preview<CR>', options)
-- map('n', 'gs', ':VGit buffer_gutter_blame_preview<CR>', options)
 map('n', 'gn', ':VGit hunk_down<CR>', options)
 map('n', 'gp', ':VGit hunk_up<CR>', options)
--- GIT CONFIF

map('', '<leader>a', ':HopWord<CR>', { silent = true })

map('', '<leader>l', ':Telescope  lsp_document_symbols<CR>', { silent = true })
-- map('', '<leader>t', ':Telescope  buffers<CR>', { silent = true })
map('', '<leader>m', '<cmd>Telescope marks<cr>', { silent = true })
map('', '<leader>b', ':DBUI<CR>', { silent = true })
-- map('', '<leader>f', ':Rg<CR>', { silent = true })
map('', '<leader>f', '<cmd>Telescope live_grep<CR>', { silent = true })
map('', '<leader><Enter>', ':ToggleTerm<CR>', { silent = true })

map('n', '<S-h>', ':bprevious<CR>', { silent = true, noremap=true })
map('n', '<S-l>', ':bnext<CR>', { silent = true, noremap=true })

map('n', '<leader>w', ':w! <cr>', options)
map('n', '<leader>n', ':bnext<cr>', options)
map('n', '<leader>p', ':bprev<cr>', options)
-- map('n','<C-n>', ':CHADopen<cr>', options)
map('n','<C-n>', ':NvimTreeToggle<cr>', options)

map('n','<M-h>', ':vertical resize +5<CR>', options)
map('n','<M-l>', ':vertical resize -5<CR>', options)
map('n','<M-k>', ':resize -5<CR>', options)
map('n','<M-j>', ':resize +5<CR>', options)

map('n','<C-J>', '<C-W>j', options)
map('n','<C-K>', '<C-W>k', options)
map('n','<C-L>', '<C-W>l', options)
map('n','<C-H>', '<C-W>h', options)

map('n','<A-1>', '<Cmd>BufferLineGoToBuffer 1 <CR>', { silent=true, noremap=true })
map('n','<A-2>', '<Cmd>BufferLineGoToBuffer 2 <CR>', { silent=true, noremap=true })
map('n','<A-3>', '<Cmd>BufferLineGoToBuffer 3 <CR>', { silent=true, noremap=true })
map('n','<A-4>', '<Cmd>BufferLineGoToBuffer 4 <CR>', { silent=true, noremap=true })
map('n','<A-5>', '<Cmd>BufferLineGoToBuffer 5 <CR>', { silent=true, noremap=true })
map('n','<A-6>', '<Cmd>BufferLineGoToBuffer 6 <CR>', { silent=true, noremap=true })
map('n','<A-7>', '<Cmd>BufferLineGoToBuffer 7 <CR>', { silent=true, noremap=true })
map('n','<A-8>', '<Cmd>BufferLineGoToBuffer 8 <CR>', { silent=true, noremap=true })
map('n','<A-9>', '<Cmd>BufferLineGoToBuffer 9 <CR>', { silent=true, noremap=true })
map('n','<A-0>', ":Bdelete <CR>", { silent=true, noremap=true })


map('n','<A-,>', ':BufferLineMovePrev <CR>', { silent=true, noremap=true})
map('n','<A-.>', ':BufferLineMoveNext <CR>', { silent=true, noremap=true})

-- coc config
-- map('n', '<leader>s', ':CocList -I symbols<CR>', { noremap = true, nowait=true })
-- map('n', '<leader>o', ':CocList outline<CR>', { noremap = true, nowait=true })
-- map('', 'gd', '<Plug>(coc-definition)', {silent=true})
-- map('n', '<c-space>', ':CocAction<CR>', { silent=true })

map('v', 'J', ":m '>+1<CR>gv=gv", { noremap=true })
map('v', 'K', ":m '<-2<CR>gv=gv", { noremap=true })


--- DAP CONFIG
map('n','<leader>da', ":lua require'servers.javascript'.attach()<CR> ", options)
map('n', '<leader>ba', ":lua require'dap'.toggle_breakpoint()<CR>", options )
map('n', '<leader>du', ":lua require'dapui'.toggle()<CR>", options )
map("n", "<F5>", ":lua require'dap'.step_into()<CR>", options)
map("n", "<F6>", ":lua require'dap'.step_over()<CR>", options)
map("n", "<F7>", ":lua require'dap'.continue()<CR>", options)
map("n", "<F4>", ":lua require'dap'.step_out()<CR>", options)
-- map("n", "<leader>b", ":lua require'dap'.toggle_breakpoint()<CR>")
-- map("n", "<leader>B", ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
-- map("n", "<leader>lp", ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>")
