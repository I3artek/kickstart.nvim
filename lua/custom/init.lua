-- tab settings
vim.o.tabstop = 4
vim.o.softtabstop = 0
vim.o.expandtab = false
vim.o.shiftwidth = 4

vim.g.have_nerd_font = true

vim.o.relativenumber = true

-- set indentation to two spaces in Haskell files
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.hs",
  callback = function()
    vim.o.expandtab	= true
	vim.o.shiftwidth = 2
  end,
})

-- set colorscheme
vim.cmd.colorscheme 'catppuccin-mocha'
