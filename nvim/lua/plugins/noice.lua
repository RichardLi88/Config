return {
  {
    'folke/noice.nvim',
    cond = not vim.g.vscode,
    event = { 'BufReadPost', 'BufNewFile' },
    dependencies = { 'MunifTanjim/nui.nvim' },
    init = function()
      vim.opt.lazyredraw = false
    end,
    opts = {
      messages = { view = 'mini', view_warn = 'mini' },
      lsp = {
        override = {
          ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
          ['vim.lsp.util.stylize_markdown'] = true,
          ['cmp.entry.get_documentation'] = true,
        },
      },
      presets = {
        bottom_search = true,
        long_message_to_split = true,
        inc_rename = true,
        lsp_doc_border = true,
        -- command_palette = {
        --   views = {
        --     cmdline_popup = {
        --       position = {
        --         row = '50%',
        --         col = '50%',
        --       },
        --       size = {
        --         min_width = 60,
        --         width = 'auto',
        --         height = 'auto',
        --       },
        --     },
        --     cmdline_popupmenu = {
        --       position = {
        --         row = '45%',
        --         col = '50%',
        --       },
        --     },
        --   },
        -- },
      },
      routes = {
        {
          filter = {
            event = 'notify',
            find = 'No information available',
          },
          opts = { skip = true },
        },
        {
          filter = {
            event = 'msg_show',
            any = {
              { find = '%d+L, %d+B' },
              { find = '; after #%d+' },
              { find = '; before #%d+' },
            },
          },
          view = 'mini',
        },
        {
          filter = {
            event = 'lsp',
            kind = 'progress',
            find = 'jdtls',
          },
          opts = { skip = true },
        },
      },
    },
  },
}
