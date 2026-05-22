# Neovim AI Agent Setup

## Implementation Plan
- [x] Test current nvim setup loads cleanly
- [x] Add nvim-tree.lua to pack and configure left sidebar
- [x] Add telescope.nvim to pack and configure file search
- [x] Add CodeCompanion.nvim with Ollama backend
  - [x] Configure for local-only AI
  - [x] Set to suggest changes with confirmation prompt
  - [ ] Enable web search capability (tavily integration)
- [x] Configure three-panel layout (file tree | editor | AI chat)
- [x] Set up Ollama model selection (using granite4.1:8b, granite4.1:30b, qwen3.6:27b)
- [ ] Test with sample code project
- [ ] Configure chat history per project

## Current Status
- Neovim 0.12.2 with vim.pack package manager
- Ollama running with granite4.1:8b, granite4.1:30b, qwen3.6:27b, glm-4.7-flash, gemma4
- Clean Lua config structure in ~/.config/nvim/lua/robs/
- CodeCompanion.nvim: fixed broken clone (was at origin/main, reset to stable)

## Keymaps
- <leader>t - Toggle nvim-tree (left panel)
- <leader>a - Toggle CodeCompanion chat (right panel)
- <leader>f - Telescope file search
- <leader>g - Telescope live grep
- Ctrl+HJKL - Window navigation

## Notes
- Models were updated: qwen2-vl:7b and llama3.2:11b replaced with granite4.1:8b (default), granite4.1:30b, qwen3.6:27b
- CodeCompanion chat opens in vertical split on the right
- Apply changes always require confirmation