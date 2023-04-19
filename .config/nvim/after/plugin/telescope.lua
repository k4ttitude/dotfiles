local builtin = require('telescope.builtin')

vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>bf', builtin.buffers, {})
vim.keymap.set('n', '<leader>F', function()
  builtin.grep_string({ 
    search = vim.fn.input({ prompt = 'Search: ' })
  })
end)
vim.keymap.set('v', '<leader>F', 'y<ESC>:Telescope grep_string search=<C-r>0<CR>')
