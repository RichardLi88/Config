-- Set leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- For conciseness
local opts = { noremap = true, silent = true }

-- Disable the spacebar key's default behavior in Normal and Visual modes
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Allow moving the cursor through wrapped lines with j, k
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- clear highlights
vim.keymap.set('n', '<Esc>', ':noh<CR>', opts)

-- save file
vim.keymap.set('n', '<C-s>', '<cmd> w <CR>', opts)

-- save file without auto-formatting
vim.keymap.set('n', '<leader>sn', '<cmd>noautocmd w <CR>', opts)

-- quit file
vim.keymap.set('n', '<C-q>', '<cmd> q <CR>', opts)

-- delete single character without copying into register
vim.keymap.set('n', 'x', '"_x', opts)

-- Vertical scroll and center
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)

-- Find and center
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Resize with arrows
vim.keymap.set('n', '<Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<Right>', ':vertical resize +2<CR>', opts)

-- Buffers
vim.keymap.set('n', '<Tab>', ':bnext<CR>', opts)
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts)
vim.keymap.set('n', '<leader>x', ':Bdelete!<CR>', opts) -- close buffer
vim.keymap.set('n', '<leader>b', '<cmd> enew <CR>', opts) -- new buffer

-- Window management
vim.keymap.set('n', '<leader>v', '<C-w>v', opts) -- split window vertically
vim.keymap.set('n', '<leader>h', '<C-w>s', opts) -- split window horizontally
vim.keymap.set('n', '<leader>se', '<C-w>=', opts) -- make split windows equal width & height
vim.keymap.set('n', '<leader>c', ':close<CR>', opts) -- close current split window

-- Navigate between splits
vim.keymap.set('n', '<C-A-[>', ':wincmd h<CR>', opts)
vim.keymap.set('n', '<C-A-]>', ':wincmd l<CR>', opts)

-- Press jk fast to exit insert mode
vim.keymap.set('i', 'jk', '<ESC>', opts)
vim.keymap.set('i', 'kj', '<ESC>', opts)
vim.keymap.set('v', 'jk', '<ESC>', opts)
vim.keymap.set('v', 'jk', '<ESC>', opts)

-- Stay in indent mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)
vim.keymap.set('v', '<S-Tab>', '<gv', opts)
vim.keymap.set('v', '<Tab>', '>gv', opts)

-- Toggle Neotree
vim.keymap.set('n', '<C-[>', ':Neotree toggle<CR>', opts)

--copy line down
vim.keymap.set('i', '<A-S-j>', '<Esc>Yp$a', opts)
vim.keymap.set('n', '<A-S-j>', '<Esc>Yp$a', opts)

--jump to end/start of line
vim.keymap.set('i', '<C-A-h>', '<Esc>0i', opts)
vim.keymap.set('i', '<C-A-l>', '<Esc>$a', opts)
vim.keymap.set('n', '<C-A-h>', '0', opts)
vim.keymap.set('n', '<C-A-l>', '$', opts)

--move to the right/left in insert mode
vim.keymap.set('i', '<C-l>', '<Right>', opts)
vim.keymap.set('i', '<C-h>', '<Left>', opts)

--keep last copied(yanked)
vim.keymap.set('v', 'p', '"_dP', opts)

--copy and paste in visual
vim.keymap.set('v', '<C-S-c>', '+y', opts)

-- Buffers
vim.keymap.set('n', '<leader><Tab>', ':bnext<CR>', opts)
vim.keymap.set('n', '<leader>x', ':bdelete!<CR>', opts) -- close buffer
vim.keymap.set('n', '<leader>b', '<cmd> enew <CR>', opts) -- new buffer

--control backspace for fast delete
vim.keymap.set('i', '<C-BS>', '<Esc>dbi', opts)

--delete inside quotes and go into insert mode
vim.keymap.set('n', '<A-S-r>', 'ci"', opts)
vim.keymap.set('i', '<A-S-r>', 'nci"', opts)
