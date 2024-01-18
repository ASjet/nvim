-- Display absolute line number
vim.o.number = true
-- Display relative line number for short jump
vim.o.relativenumber = true

-- Left sign column(not known what it does currently)
-- It place a placeholder at the left most column
vim.o.signcolumn = "yes:1"

-- Highlight current cursor row/column
vim.o.cursorline = true
vim.o.cursorcolumn = false

-- Set an 80 color column border
vim.o.colorcolumn = "80"

-- Number of columns a tab occupied
vim.o.tabstop = 4

-- Show Matching
vim.o.showmatch = true

-- Highlight recent search result
vim.o.hlsearch = false

-- Command-line height
vim.o.cmdheight = 1

-- Dont wrap code
vim.o.wrap = false
vim.o.whichwrap = "<,>,[,]"

-- Disable line wrap
vim.o.textwidth = 0

-- Display invisible characters
vim.o.list = false
vim.o.listchars = "space:·,tab:··"

-- Display current edit mode(i.e. INSERT), (disable when using lualine plugin)
vim.o.showmode = true

-- Always display tabs(opened buffers) at the top line
vim.o.showtabline = 2

-- How many line should around the cursor at least
vim.o.scrolloff = 16

-- How many column should around the cursor at least
vim.o.sidescrolloff = 8

-- Use terminal color as neovim color
vim.o.termguicolors = true

-- Display matched brackets
vim.o.showmatch = true

-- Display line ruler
vim.o.ruler = true

-- Always display status line
vim.o.laststatus = 2

