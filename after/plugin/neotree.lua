vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal right<CR>')
vim.keymap.set('n', '<C-g>', ':Neotree git_status reveal float<CR>')
vim.keymap.set('n', '<C-b>', ':Neotree buffers reveal float<CR>')

require 'neo-tree'.setup {
  window = {
    mappings = {
      ['P'] = {
        'toggle_preview',
        config = {
          use_float = true,
          use_image_nvim = true,
        }
      }
    }
  },
  git_status = {
    window = {
      mappings = {
        ["A"] = "git_add_all",
        ["gu"] = "git_unstage_file",
        ["ga"] = "git_add_file",
        ["gr"] = "git_revert_file",
        ["gc"] = "git_commit",
        ["gp"] = "git_push",
        ["gg"] = "git_commit_and_push",
        ["i"] = "show_file_details", -- see `:h neo-tree-file-actions` for options to customize the window.
        ["b"] = "rename_basename",
        ["o"] = { "show_help", nowait=false, config = { title = "Order by", prefix_key = "o" }},
        ["oc"] = { "order_by_created", nowait = false },
        ["od"] = { "order_by_diagnostics", nowait = false },
        ["om"] = { "order_by_modified", nowait = false },
        ["on"] = { "order_by_name", nowait = false },
        ["os"] = { "order_by_size", nowait = false },
        ["ot"] = { "order_by_type", nowait = false },
      },
    },
  },
}
