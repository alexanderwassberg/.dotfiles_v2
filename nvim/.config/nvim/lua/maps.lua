local keymap = vim.keymap

vim.g.mapleader = ' '

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Close Buffer
keymap.set('n', '<Space>x', ':q <cr>')

-- Save buffer
keymap.set('n', '<Space>w', ':w <cr>')

-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')

-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- Packer
keymap.set('n', '<Space>p', ':PackerSync <cr>')

-- Reload NvimBuffer
keymap.set('n', '<Space>r', ':so % <cr>')

-- Floaterm
keymap.set('n', ',<Space>', ':FloatermToggle <cr>')

-- CoC Rename
keymap.set('n', 'rn', '<Plug>(coc-rename)')

-- NvimTree
keymap.set('n', '<Tab>', ':NvimTreeToggle <cr>')
