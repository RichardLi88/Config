return {
  'catppuccin/nvim',
  lazy = false,
  name = 'catppuccin',
  opts = {

    term_colors = true,
    transparent_background = true,
    dim_inactive = {
      enabled = false, -- dims the background color of inactive window
      percentage = 0.15, -- percentage of the shade to apply to the inactive window
    },
  },
  priority = 1000,
  config = function(_, opts)
    require('catppuccin').setup(opts)
    vim.cmd.colorscheme 'catppuccin-mocha'
    vim.keymap.set('n', '<leader>tt', function()
      local cat = require 'catppuccin'
      cat.options.transparent_background = not cat.options.transparent_background
      cat.compile()
      vim.cmd.colorscheme(vim.g.colors_name)
    end)
  end,
}
