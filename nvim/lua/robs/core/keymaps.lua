vim.g.mapleader = " "

-- Core Binds
vim.keymap.set("n", "<leader>re",   "<cmd>restart<cr>",    { desc = "[re]start Neovim (:restart)", })
vim.keymap.set("n", "<leader>e",    "<cmd>Oil<cr>",        { desc = "open file [e]xplorer (:Oil)", })
vim.keymap.set("n", "<leader>w",    "<cmd>w<cr>",          { desc = "save File (:w)", })
vim.keymap.set("n", "<leader>q",    "<cmd>q!<cr>",          { desc = "[q]uit Neovim (:q)", })
-- vim.keymap.set("n", "<leader>f",    "<cmd><cr>",          { desc = "[f]ind files", })



-- copy/paste & general behaviour

-- paste over selection without loosing yanked
vim.keymap.set("x", "p", [["_dP]])
-- yank to system clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]], opts)
-- Unmaps Q in normal mode
vim.keymap.set("n", "Q", "<nop>")
