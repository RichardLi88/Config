return {
    'folke/flash.nvim',
    event = 'VeryLazy',
    ---@type Flash.Config
    opts = {
        modes = {
            char = {
                enabled = false,
            },
        },
    },
    keys = {
        {
            'm',
            mode = { 'n', 'x', 'o' },
            function()
                require('flash').jump()
            end,
            desc = 'Flash',
        },
        {
            'M',
            mode = { 'n', 'x', 'o' },
            function()
                require('flash').treesitter()
            end,
            desc = 'Flash Treesitter',
        },
    },
}
