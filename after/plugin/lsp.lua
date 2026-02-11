local capabilities = require 'cmp_nvim_lsp'.default_capabilities()

vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
vim.keymap.set('n', 'K',  vim.lsp.buf.hover, {})
vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, {})

vim.lsp.config('lua_ls', {
  capabilities = capabilities
})

vim.lsp.config('clangd', {
  capabilities = capabilities
})

vim.lsp.config('ts_ls', {
  capabilities = capabilities
})
