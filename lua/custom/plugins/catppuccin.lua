vim.pack.add({
  { src = 'https://github.com/catppuccin/nvim' },
})

require('catppuccin').setup({
  flavour = 'mocha', -- latte, frappe, macchiato, mocha
  transparent_background = false,
  integrations = {
    telescope = { enabled = true },
    mini = { enabled = true },       -- covers mini.files' highlights
    native_lsp = {
      enabled = true,
      virtual_text = {
        errors = { 'italic' },
        hints = { 'italic' },
        warnings = { 'italic' },
        information = { 'italic' },
      },
    },
    treesitter = true,
  },
})

vim.cmd.colorscheme('catppuccin')
