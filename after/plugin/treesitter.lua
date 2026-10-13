require("nvim-treesitter").setup()

require("nvim-treesitter").install({
  "javascript",
  "typescript",
  "java",
  "c",
  "lua",
  "vim",
  "vimdoc",
  "query",
  "markdown",
  "markdown_inline",
  "python",
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "javascript",
    "typescript",
    "java",
    "c",
    "lua",
    "vim",
    "vimdoc",
    "query",
    "markdown",
    "markdown_inline",
    "python",
  },
  callback = function(args)
    vim.treesitter.start(args.buf)
  end,
})
