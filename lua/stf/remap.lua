vim.g.mapleader = ','

vim.keymap.set('n', ';', ':')

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- paste without loosing the yanked buffer
vim.keymap.set('x', '<leader>p', '"_dP')

-- copy to system clipboard
vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>Y', '"+Y')
