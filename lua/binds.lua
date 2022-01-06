-- maps.lua

local map = vim.api.nvim_set_keymap

-- map the leader key
map('n', '<Space>', '', {})
vim.g.mapleader = ' '  -- 'vim.g' sets global variables


options = { noremap = true }
map('n', '<leader>q', ':q!<CR>', options)
-- map('', '<C-p>', ':GitFiles<CR>', options)
map('', '<C-p>', ':Files<CR>', options)
map('n', '<leader>gn', ':GitGutterNextHunk<CR>', options)
map('n', '<leader>gs', ':Gitsigns toggle_signs<CR>', options)

map('', '<leader>a', '<Plug>(easymotion-bd-w)', { silent = true })
map('', '<leader>l', ':Lines<CR>', { silent = true })
map('', '<leader>m', ':Marks<CR>', { silent = true })
map('', '<leader>b', ':DBUI<CR>', { silent = true })
map('', '<leader>f', ':Rg<CR>', { silent = true })

map('n', '<S-h>', ':bprevious<CR>', { silent = true, noremap=true })
map('n', '<S-l>', ':bnext<CR>', { silent = true, noremap=true })

map('n', '<leader>w', ':w! <cr>', options)
map('n', '<leader>n', ':bnext<cr>', options)
map('n', '<leader>p', ':bprev<cr>', options)
map('n','<C-n>', ':CHADopen<cr>', options)
map('n','<C-n>', ':CHADopen<cr>', options)

map('n','<M-h>', ':vertical resize +5<CR>', options)
map('n','<M-l>', ':vertical resize -5<CR>', options)
map('n','<M-k>', ':resize -5<CR>', options)
map('n','<M-j>', ':resize +5<CR>', options)

map('n','<C-J>', '<C-W>j', options)
map('n','<C-K>', '<C-W>k', options)
map('n','<C-L>', '<C-W>l', options)
map('n','<C-H>', '<C-W>h', options)

map('n','<leader>dm', ':delmarks A-Z0-9 <CR>', options)

map('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<Tab>"', {expr = true})
map('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', {expr = true})

map('n','<A-1>', '<Cmd>BufferLineGoToBuffer 1 <CR>', { silent=true, noremap=true })
map('n','<A-2>', '<Cmd>BufferLineGoToBuffer 2 <CR>', { silent=true, noremap=true })
map('n','<A-3>', '<Cmd>BufferLineGoToBuffer 3 <CR>', { silent=true, noremap=true })
map('n','<A-4>', '<Cmd>BufferLineGoToBuffer 4 <CR>', { silent=true, noremap=true })
map('n','<A-5>', '<Cmd>BufferLineGoToBuffer 5 <CR>', { silent=true, noremap=true })
map('n','<A-6>', '<Cmd>BufferLineGoToBuffer 6 <CR>', { silent=true, noremap=true })
map('n','<A-7>', '<Cmd>BufferLineGoToBuffer 7 <CR>', { silent=true, noremap=true })
map('n','<A-8>', '<Cmd>BufferLineGoToBuffer 8 <CR>', { silent=true, noremap=true })
map('n','<A-9>', '<Cmd>BufferLineGoToBuffer 9 <CR>', { silent=true, noremap=true })
map('n','<A-0>', '<Cmd>BufferLinePickClose <CR>', { silent=true, noremap=true })

map('n','<A-<>', ':BufferLineMovePrev <CR>', { silent=true, noremap=true })
map('n','<A->>', ':BufferLineMoveNext <CR>', { silent=true, noremap=true })

-- coc config
map('n', '<leader>s', ':CocList -I symbols<CR>', { noremap = true, nowait=true })
map('n', '<leader>o', ':CocList outline<CR>', { noremap = true, nowait=true })
map('', 'gd', '<Plug>(coc-definition)', {silent=true})
map('n', '<c-space>', ':CocAction<CR>', { silent=true })

map('v', 'J', ":m '>+1<CR>gv=gv", { noremap=true })
map('v', 'K', ":m '<-2<CR>gv=gv", { noremap=true })
