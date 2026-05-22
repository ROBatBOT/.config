
vim.pack.add({
	-- File Explorer
	{ src = 'https://github.com/stevearc/oil.nvim' }, 
	-- LSP-Config
	{ src = 'https://github.com/neovim/nvim-lspconfig' }, 
	-- Parser
	{ src = 'https://github.com/nvim-treesitter/nvim-treesitter' }, 
    -- Everforest Theme
	{ src = 'https://github.com/sainnhe/everforest' }, 
    -- Mason LSP-Package-Manager
	{ src = 'https://github.com/mason-org/mason.nvim' }, 
    -- Lualine
	{ src = 'https://github.com/nvim-lualine/lualine.nvim' }, 
    -- Devicons
	{ src = 'https://github.com/nvim-tree/nvim-web-devicons' }, 
})

-- Call Plugins

-- start Oil File Explorer
require('robs.plugins.oil')

-- start Mason
require('robs.plugins.mason')

-- start Lualine
require('robs.plugins.lualine')
