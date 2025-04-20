vim.wo.number = true
vim.o.relativenumber = true
vim.o.clipboard = 'unnamedplus'
vim.o.wrap = false
vim.o.linebreak = true
vim.o.autoindent = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.swapfile = false
vim.o.smartindent = true
vim.o.showtabline = 2
vim.opt.termguicolors = true
vim.o.scrolloff = 5
vim.o.sidescrolloff = 20

vim.api.nvim_create_autocmd('FileType', {
    pattern = 'c',
    callback = function()
        vim.opt_local.tabstop = 2
        vim.opt_local.shiftwidth = 2
        vim.opt_local.expandtab = true
    end,
})
