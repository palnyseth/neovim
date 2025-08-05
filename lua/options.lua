-- Clipboard
vim.schedule(function()
    vim.o.clipboard = 'unnamedplus'
end)

-- Line numbers
vim.o.number = true
vim.o.relativenumber = true

-- Indenting
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.smarttab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = -1

-- Highlighting
vim.o.smartcase = true
vim.o.ignorecase = true
vim.o.hlsearch = true
vim.o.incsearch = true

-- Split window
vim.o.splitright = true
vim.o.splitbelow = true

-- Theme
vim.o.termguicolors = true
vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

vim.g.mouse = 'a'
--vim.o.cursorline = true
vim.o.undofile = true
vim.o.signcolumn = 'yes'
vim.o.updatetime = 250
vim.o.timeoutlen = 250
vim.o.scrolloff = 10
vim.o.swapfile = false
vim.o.wrap = true
vim.o.linebreak = true
vim.o.inccommand = "split"
vim.o.foldmethod = "manual"
vim.o.confirm = true
vim.o.showtabline = 2
vim.o.title = true
vim.o.showmode = false
