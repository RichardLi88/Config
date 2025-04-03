return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    local mocha = require('catppuccin.palettes').get_palette 'mocha'
    vim.opt.termguicolors =
      true, require('bufferline').setup {
        options = {
          mode = 'buffers',
          themable = true,
          separator_style = 'slant',
          indicator = {
            style = 'none',
          },
        },
      }
  end,
}
