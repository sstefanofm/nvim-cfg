local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.git_files,  { desc = 'Telescope find git files only' })
vim.keymap.set('n', '<leader>fs', function()
  builtin.grep_string({ search = vim.fn.input('Grep > ') })
end, { desc = 'Telescope find files with searched string' })
