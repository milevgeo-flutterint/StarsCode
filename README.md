# PokerStars Neovim Configuration

A custom Neovim configuration built with PokerStars branding and optimized for modern development workflows. This configuration provides VS Code-like functionality while maintaining Vim's power and efficiency.

## Features

### Copilot Agent
- Using the latest available Claude 4.0
- Added custom prompts that create a PR description based on all staged files with pre-provided template that is agreed among developers.
- Quick chat or Agent mode, whatever you need.
- Providing basic context from your opened buffers (tabs) to better understand what you currently work on.

### 🎨 Custom PokerStars Theme

- Custom color scheme based on PokerStars brand colors
- Dark theme with red, green, and blue accents
- Consistent theming across all plugins

### 🖱️ Mouse Support

- Full mouse support enabled
- Click to position cursor
- Mouse scrolling and selection
- Compatible with both terminal and GUI environments

### 📁 File Explorer

- **Neo-tree** file explorer with VS Code-like interface
- Toggle with `Ctrl+B`
- Git integration showing file status
- File icons and syntax highlighting

### 📑 Buffer Management (VS Code-like Tabs)

- **Barbar** plugin provides VS Code-style tabs
- Navigate between buffers easily
- Visual indicators for modified files
- Keyboard shortcuts for quick navigation

### 🔍 Poker-Specific Search Features

Enhanced search capabilities specifically designed for PokerStars development:

#### Search Files in Poker Package

- `<leader>sfpp` - Search files in the swf-poker package
- Quickly navigate to poker-related files

#### Search All Poker Directories

- `<leader>sfap` - Search files across all poker widget directories
- Covers poker-\* directories in the widgets folder

#### Grep in All Poker Directories

- `<leader>sga` - Search text content across all poker-related directories
- Includes both swf-poker package and poker-\* widget directories

### 💾 Session Management

Persistent session support to resume your work exactly where you left off:

- `<leader>ss` - Save and load current session
- `<leader>sl` - Load last session automatically
- `<leader>sd` - Stop session recording
- Auto-restores open files, cursor positions, and window layouts

### 🚀 Modern Development Features

- **LSP Integration** - Full Language Server Protocol support
- **Autocompletion** - Intelligent code completion with nvim-cmp
- **Syntax Highlighting** - TreeSitter-based syntax highlighting
- **Git Integration** - GitSigns for git status in files
- **Fuzzy Finding** - Telescope for file and text search
- **Snippets** - LuaSnip for code snippets

### Performance
- Average Startup time: 68.11ms

- Based on the actual CPU time of the Neovim process till UIEnter.
  This is more accurate than `nvim --startuptime`.
  
- LazyStart 14.99ms
- LazyDone  63.45ms (+48.47ms)
- UIEnter   68.11ms (+4.66ms)

## Installation

1. **Backup existing configuration** (if any):
   ```bash
   mv ~/.config/nvim ~/.config/nvim.backup
   ```
