local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

vim.api.nvim_create_autocmd("TextYankPost", {
  group = augroup("highlight_yank"),
  callback = function()
    vim.highlight.on_yank()
  end,
})

--local events = { 'BufWritePost' }
vim.api.nvim_create_autocmd('BufWritePost', {
  group = augroup("python_format"),
  pattern = '*.py',
  callback = function()
    vim.cmd('!black % | isort %')
  end,
})
