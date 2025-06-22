vim.keymap.set('n', '<C-b>', ':Neotree filesystem reveal right<CR>')

require 'neo-tree'.setup {
  window = {
    mappings = {
      ["P"] = {
        "toggle_preview",
        config = {
          use_float = true,
          use_image_nvim = true,
        }
      }
    }
  }
}
