-- nvim-tree v2 configuration
-- Left sidebar file tree with auto-root detection

require("nvim-tree").setup({
    -- Sync the tree root with CWD
    sync_root_with_cwd = true,

    -- Automatically update the focused file
    update_focused_file = {
        enable = true,
        update_root = true,
        ignore_list = {},
    },

    -- Do not disable netrw (keep default netrw behavior)
    hijack_cursor = true,

    -- Git integration
    git = {
        enable = true,
        timeout = 500,
    },

    -- Filter options
    filters = {
        -- Show dotfiles
        dotfiles = false,
    },

    -- View settings
    view = {
        -- Width of the sidebar
        width = 30,
    },

})

-- Auto-open nvim-tree when a directory is provided
vim.api.nvim_create_autocmd("VimEnter", {
    desc = "Auto-open nvim-tree for directories",
    callback = function()
        local argv = vim.fn.argv()
        if #argv == 1 and vim.fn.isdirectory(argv[1]) == 1 then
            require("nvim-tree.api").tree.open()
        end
    end,
})