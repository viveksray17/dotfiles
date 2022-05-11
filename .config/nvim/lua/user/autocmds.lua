vim.cmd([[
  augroup general
    autocmd!
    autocmd BufNewFile,BufRead *.djhtml set ft=htmldjango
    autocmd BufNewFile,BufRead *.gohtml set ft=html
    autocmd TermOpen * setlocal nonumber norelativenumber nosmd signcolumn=no
  augroup end

  augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]])
