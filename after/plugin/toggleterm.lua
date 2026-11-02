require("toggleterm").setup({
    -- General
    size = function(term)
        if term.direction == "horizontal" then
            return 15
        elseif term.direction == "vertical" then
            return vim.o.columns * 0.35
        end
    end,

    open_mapping = [[<C-\>]],
    hide_numbers = true,
    shade_terminals = true,
    shading_factor = 2,

    start_in_insert = true,
    insert_mappings = true,
    terminal_mappings = true,

    persist_size = true,
    persist_mode = true,

    direction = "float",
    close_on_exit = true,
    auto_scroll = true,

    -- Floating terminal
    float_opts = {
        border = "curved",
        winblend = 0,
        width = function()
            return math.floor(vim.o.columns * 0.8)
        end,
        height = function()
            return math.floor(vim.o.lines * 0.8)
        end,
    },
})

