-- CodeCompanion configuration
-- AI agent chat with Ollama backend (local-only)

require("codecompanion").setup({
    -- Use Ollama as the default adapter
    adapter = function()
        local adapter = require("codecompanion.adapters").get("ollama", {
            -- Local-only AI with Ollama
            opts = {
                -- Default model for general chat (text/code)
                model = "granite4.1:8b",
                -- Temperature for creativity (lower = more focused)
                temperature = 0.1,
                -- Top_p for diversity
                top_p = 0.1,
                -- Number of tokens to generate
                num_predict = 4096,
            },
        })
        return adapter
    end,

    -- Behavior configuration
    behavior = {
        -- Automatically satisfy requirements for context
        auto_satisfy_reqs = true,
        -- Copy code blocks to clipboard
        copy = true,
        -- Apply changes with confirmation
        apply = {
            -- Always ask before applying
            confirm = true,
            -- Show diff before applying
            diff = true,
        },
    },

    -- Strategy configuration
    strategies = {
        -- Apply changes with confirmation
        ["apply"] = {
            -- Ask before applying
            ask_before_apply = true,
            -- Show the diff
            show_diff = true,
        },
    },

    -- Chat window configuration
    chat = {
        window = {
            -- Open chat in the right split
            layout = "vertical",
            -- Width as percentage of screen
            width = 0.3,
            -- Height as percentage of screen  
            height = 0.9,
        },
    },
})

-- Model aliases for easy switching via /model command
-- granite4.1:8b - fast, good for code/text
-- granite4.1:30b - more powerful, slower
-- qwen3.6:27b - strong reasoning
-- glm-4.7-flash - lightweight