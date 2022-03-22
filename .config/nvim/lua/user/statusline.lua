vim.cmd([[
  set laststatus=2
  set statusline=%f
  set statusline+=%=%{&filetype}
  set statusline+=\ %{gitbranch#name()}
]])
