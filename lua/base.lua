vim.cmd('autocmd!')
vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
vim.wo.number = true
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.expandtab = true
vim.opt.shell = 'zsh'
vim.opt.inccommand = 'split'
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.ai = true 
vim.opt.si = true
vim.opt.backspace = 'start,eol,indent'
vim.opt.path:append { '**' } --finding files serach down into subfolders
vim.opt.wildignore:append { '*/node_modules/*' }
vim.opt.formatoptions:append { 'r' }
vim.g.mapleader = " "
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.incsearch = true
vim.o.tabstop = 2
vim.o.ignorecase = true
vim.o.hlsearch = true
vim.o.swapfile = false
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.scrolloff = 10
vim.o.errorbells = false
vim.o.shiftwidth = 2
vim.o.numberwidth = 4
vim.o.showmode = false
vim.o.showtabline = 2
vim.o.signcolumn = 'yes'
vim.o.mouse = 'a'
vim.opt.cursorline = true
vim.opt.winblend = 0
vim.opt.wildoptions = "pum"
vim.opt.pumblend = 5

