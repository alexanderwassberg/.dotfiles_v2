local keymap = vim.keymap

vim.g.mapleader = ';'

keymap.set('n', 'x', '"_x')

-- Increment/decrement numbers in buffer
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab
keymap.set('n', 'te', ':tabedit')

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

-- NvimTree
keymap.set('n', 'fe', ':NvimTreeOpen <cr>')

-- Floaterm
keymap.set('n', ',<Space>', ':FloatermToggle <cr>')

-- TagBar
keymap.set('n', '<Tab>', ':TagbarToggle <cr>')

-- CoC Reference
keymap.set('n', 'gr', '<Plug>(coc-references)')

-- CoC Rename
keymap.set('n', 'rn', '<Plug>(coc-rename)')

-- Barbar

keymap.set('n', 'tt', ':BufferMoveNext <cr>')
keymap.set('n', 't1', ':BufferGoto 1 <cr>')
keymap.set('n', 't2', ':BufferGoto 2 <cr>')
keymap.set('n', 't3', ':BufferGoto 3 <cr>')
keymap.set('n', 't4', ':BufferGoto 4 <cr>')
keymap.set('n', 't5', ':BufferGoto 5 <cr>')
keymap.set('n', 't6', ':BufferGoto 6 <cr>')
