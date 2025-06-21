local null_ls = require 'null-ls'

vim.keymap.set('n', '<C-s>', vim.lsp.buf.format, {})

null_ls.setup {
  sources = {
    null_ls.builtins.formatting.stylua,
  }
}
