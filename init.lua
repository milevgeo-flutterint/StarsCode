require('config.options')
require('config.keybinds')
require('config.lazy')
require('config.autocmd')

require('pokerstars').setup()
vim.cmd('colorscheme pokerstars')
