vim.cmd([[ command! PandocMdtoPdf !pandoc % -o pdf-converted/%:r.pdf ]])
