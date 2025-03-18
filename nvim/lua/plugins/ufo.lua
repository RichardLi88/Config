return {
  'kevinhwang91/nvim-ufo',
  dependencies = { 'kevinhwang91/promise-async' },
  config = function()
    vim.o.foldcolumn = '1' -- Show fold column
    vim.o.foldlevel = 99 -- Keep folds open by default
    vim.o.foldlevelstart = 99
    vim.o.foldenable = true

    local ufo = require 'ufo'
    vim.o.foldmethod = 'manual' -- Let ufo handle folding

    -- Set fold providers
    ufo.setup {
      provider_selector = function(bufnr, filetype, buftype)
        return { 'lsp', 'indent' }
      end,
    }
  end,
}
