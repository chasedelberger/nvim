-- Render markdown in-buffer (headings, code blocks, tables, checkboxes)
-- Requires treesitter parsers `markdown` and `markdown_inline` (installed in init.lua)

vim.pack.add({
  { src = 'https://github.com/MeanderingProgrammer/render-markdown.nvim' },
})

require('render-markdown').setup({})
