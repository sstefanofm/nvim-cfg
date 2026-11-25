local flash = require("flash")

flash.setup {}

local map = vim.keymap.set

-- Jump normal
map({ "n", "x", "o" }, "<leader>s", function()
    flash.jump()
end, { desc = "Flash Jump" })

-- Treesitter jump
map({ "n", "x", "o" }, "<leader>S", function()
    flash.treesitter()
end, { desc = "Flash Treesitter" })

-- Remote jump
map("o", "<leader>r", function()
    flash.remote()
end, { desc = "Remote Flash" })

-- Treesitter search
map({ "o", "x" }, "<leader>R", function()
    flash.treesitter_search()
end, { desc = "Flash Treesitter Search" })
