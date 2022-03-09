vim.cmd([[
  augroup general
    autocmd!
    autocmd BufNewFile,BufRead ~/Documents/code/python_projects/**/*.html set ft=htmldjango
    autocmd TermOpen * setlocal nonumber norelativenumber nosmd signcolumn=no
  augroup end
]])
