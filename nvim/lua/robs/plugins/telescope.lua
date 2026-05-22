-- telescope.nvim configuration
-- Fuzzy finder for files, grep, and more

require("telescope").setup({
    defaults = {
        -- Use a compact dropdown style
        layout_config = {
            width = 0.8,
            height = 0.8,
        },
        -- Show results as a dropdown
        sorting_strategy = "ascending",
    },
    pickers = {
        -- Find files
        find_files = {
            hidden = true,
        },
    },
})

-- Load extensions if available
local ok, _ = pcall(require("telescope").load_extension, "file_browser")
if not ok then
    print("telescope file_browser extension not available (optional)")
end