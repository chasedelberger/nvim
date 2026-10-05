# nvim config

Personal fork of [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim). Base behavior and
layout follow kickstart's docs (`:help kickstart.nvim` / `doc/kickstart.txt`) — this README only
covers what's been changed or added on top of it.

## Changes from kickstart
- `init.lua`:
  - `vim.o.relativenumber = true`
  - Added LSP servers: `basedpyright`, `ruff`, `yaml-language-server`
  - Added `<leader>td` keymap to toggle diagnostics on/off
  - Enabled `require 'custom.plugins'` (disabled by default in kickstart)
- `lua/custom/plugins/catppuccin.lua` — catppuccin (mocha) colorscheme, with telescope/mini/
  native_lsp/treesitter integrations enabled
- `lua/custom/plugins/mini-files.lua` — mini.files file explorer, bound to `<leader>e` (current
  buffer's dir) and `<leader>E` (cwd)
- `lua/custom/plugins/sql.lua` — sqlfluff wired in as both linter (nvim-lint, on save) and
  formatter (conform.nvim, via `:Format`), dialect set to `snowflake`
- `nvim-pack-lock.json` is tracked (kickstart ignores it upstream; tracking it is kickstart's own
  recommended setting for personal forks, for reproducible plugin versions across machines)

## Restoring on a new machine
```
gh repo clone chasedelberger/nvim ~/.config/nvim
nvim
```
Plugins install automatically via `vim.pack` on first launch. LSP servers/tools managed by Mason
(if any are configured) will also bootstrap on first use.
