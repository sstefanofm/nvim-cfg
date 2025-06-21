vim.g.mapleader = ','

local map = vim.keymap.set

map('n', ';', ':')

map('v', 'J', ":m '>+1<CR>gv=gv")
map('v', 'K', ":m '<-2<CR>gv=gv")

-- paste without loosing the yanked buffer
map('x', '<leader>p', '"_dP')

-- copy to system clipboard
map('n', '<leader>y', '"+y')
map('v', '<leader>y', '"+y')
map('n', '<leader>Y', '"+Y')

-- replace word under cursor
map('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
