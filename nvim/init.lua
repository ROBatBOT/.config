-- ~/.config/nvim/init.lua

require('vim._core.ui2').enable({})
vim.g.mapleader = ' '

require('robs.core')
require('robs.pack')
require('current_theme')

--vim.lsp.enable('lua_ls')
