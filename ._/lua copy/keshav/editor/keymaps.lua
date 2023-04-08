local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local k = vim.keymap

-- remove bad habbits  Disable arrow keys --
map('', '<up>', '<nop>')
map('', '<down>', '<nop>')
map('', '<left>', '<nop>')
map('', '<right>', '<nop>')


vim.g.mapleader = " "
k.set("n", "<leader>pv", vim.cmd.Ex)
k.set("n", ",pv", vim.cmd.Ex)

-- Change split orientation
map('n', '<leader>tk', '<C-w>t<C-w>K') -- change vertical to horizontal
map('n', '<leader>th', '<C-w>t<C-w>H') -- change horizontal to vertical


-- Increment/decrement
k.set('n', '+', '<C-a>')
k.set('n', '-', '<C-x>')

-- Delete a word backwards
k.set('n', 'dw', 'vb"_d')

-- Select all
k.set('n', '<C-a>', 'gg<S-v>G')
