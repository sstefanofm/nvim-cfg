require("gitsigns").setup({
  -- signs = { -- different than default
  --   add = { text = "+" },
  --   change = { text = "~" },
  --   delete = { text = "_" },
  --   topdelete = { text = "‾" },
  --   changedelete = { text = "~" },
  -- },
  signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
  numhl = true,    -- Toggle with `:Gitsigns toggle_numhl`
  linehl = false,   -- Toggle with `:Gitsigns toggle_linehl`
  watch_gitdir = {
    interval = 1000,
    follow_files = true,
  },
  current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
})
