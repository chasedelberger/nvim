vim.pack.add({
	{ src = 'https://github.com/echasnovski/mini.files' },
})

require('mini.files').setup({})

vim.keymap.set('n', '<leader>e', function()
	require('mini.files').open(vim.api.nvim_buf_get_name(0))
end, { desc = 'Open file explorer (mini.files)' })

vim.keymap.set('n', '<leader>E', function()
	require('mini.files').open(vim.uv.cwd())
end, { desc = 'Open file explorer (cwd)' })

