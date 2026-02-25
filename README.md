# Neovim Config

Personal Neovim 0.11+ configuration using [Lazy.nvim](https://github.com/folke/lazy.nvim) as the plugin manager.

- **Leader key**: `Space`
- **Theme**: Catppuccin Mocha
- **Indentation**: 2 spaces (expandtab)
- **Line numbers**: Hybrid (absolute on current line, relative on others)
- **Swap files**: Disabled

## Directory Structure

```
init.lua              Entry point: bootstraps Lazy.nvim, loads options + plugins
lua/vim-options.lua   Core editor settings and global keymaps
lua/plugins/          One file per plugin (or group), auto-loaded by Lazy
```

## Plugins

### Editor Core

| Plugin                                                                | Description                                                              |
| --------------------------------------------------------------------- | ------------------------------------------------------------------------ |
| [catppuccin](https://github.com/catppuccin/nvim)                      | Color scheme (Mocha variant)                                             |
| [alpha-nvim](https://github.com/goolord/alpha-nvim)                   | Startup dashboard with Neovim ASCII art                                  |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Parser-based syntax highlighting and indentation (auto-installs parsers) |
| [oil.nvim](https://github.com/stevearc/oil.nvim)                      | Edit your filesystem like a buffer (floating window)                     |
| [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)       | Sidebar file explorer and buffer list                                    |

### LSP and Completion

| Plugin                                                                       | Description                                                   |
| ---------------------------------------------------------------------------- | ------------------------------------------------------------- |
| [mason.nvim](https://github.com/williamboman/mason.nvim)                     | Portable installer for LSP servers, formatters, and linters   |
| [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim) | Bridges Mason and lspconfig; auto-installs configured servers |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)                   | Server definitions for the native LSP client                  |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)                              | Autocompletion engine                                         |
| [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)                      | LSP completion source for nvim-cmp                            |
| [LuaSnip](https://github.com/L3MON4D3/LuaSnip)                               | Snippet engine                                                |
| [friendly-snippets](https://github.com/rafamadriz/friendly-snippets)         | Community-maintained snippet collection (VS Code format)      |

Configured language servers: **TypeScript** (`ts_ls`), **HTML** (`html`), **Lua** (`lua_ls`)

### Formatting and Linting

| Plugin                                                    | Description                                             |
| --------------------------------------------------------- | ------------------------------------------------------- |
| [none-ls.nvim](https://github.com/nvimtools/none-ls.nvim) | Injects external formatters/linters into the LSP client |

Configured sources: **stylua** (Lua formatting), **prettier** (JS/TS/HTML/CSS formatting), **erb_lint** (ERB diagnostics)

### Search

| Plugin                                                                                 | Description                                                  |
| -------------------------------------------------------------------------------------- | ------------------------------------------------------------ |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)                     | Fuzzy finder for files, text, buffers, and more              |
| [telescope-ui-select.nvim](https://github.com/nvim-telescope/telescope-ui-select.nvim) | Routes `vim.ui.select` (e.g. code actions) through Telescope |

### Git

| Plugin                                                      | Description                                                          |
| ----------------------------------------------------------- | -------------------------------------------------------------------- |
| [vim-fugitive](https://github.com/tpope/vim-fugitive)       | Git commands from within Neovim (`:Git`, `:Gdiffsplit`, etc.)        |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Git change indicators in the sign column, hunk preview, inline blame |

### Navigation

| Plugin                                                                     | Description                                              |
| -------------------------------------------------------------------------- | -------------------------------------------------------- |
| [nvim-tmux-navigation](https://github.com/alexghergh/nvim-tmux-navigation) | Seamless navigation between Neovim splits and tmux panes |

### Other

| Plugin                                                                      | Description                            |
| --------------------------------------------------------------------------- | -------------------------------------- |
| [swagger-preview.nvim](https://github.com/vinnymeller/swagger-preview.nvim) | Live preview for Swagger/OpenAPI files |
