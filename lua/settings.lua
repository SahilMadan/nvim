-- Leader Key
vim.g.leaderkey=";"

-- Show line number
vim.o.number = true

-- Do not continue comments on newlines
vim.cmd('autocmd BufEnter * set formatoptions-=cro')

-- Indent new line on the same line as preceeding line
vim.o.autoindent = false
vim.o.smartindent = true

-- Tab Settings
vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2

