-- SQL linting & formatting via sqlfluff

-- Install the two plugins (vim.pack downloads them on next start if missing)
vim.pack.add({
  { src = 'https://github.com/mfussenegger/nvim-lint' },
  { src = 'https://github.com/stevearc/conform.nvim' },
})

-- Wire nvim-lint: run sqlfluff on save for .sql files
require('lint').linters_by_ft = { sql = { 'sqlfluff' } }
local sqlfluff = require('lint').linters.sqlfluff
sqlfluff.args = { 'lint', '--format=json', '--dialect=snowflake' }

vim.api.nvim_create_autocmd('BufWritePost', {
  callback = function() require('lint').try_lint() end,
})

-- Wire conform.nvim: :Format uses sqlfluff for .sql files
require('conform').setup({
  formatters_by_ft = { sql = { 'sqlfluff' } },
  formatters = {
    sqlfluff = { args = { 'format', '--dialect=snowflake', '-' } },
  },
})

-- :Format command
vim.api.nvim_create_user_command('Format', function(args)
  require('conform').format({ async = true, lsp_fallback = true })
end, {})
