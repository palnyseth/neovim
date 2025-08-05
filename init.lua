vim.g.mapleader = " "

local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
  vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  }
end

-- Add lazy to the `runtimepath`, this allows us to `require` it.
---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- Set up lazy, and load my `lua/custom/plugins/` folder
require("lazy").setup({ import = "custom/plugins" }, {
  change_detection = {
    notify = false,
  },
})

--------------------------
--Autocmd
local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local kursiv_group = augroup("Kursiv", {})
local yank_group = augroup('HighlightYank', {})

--- Highlight yapped text
autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = yank_group,
  callback = function()
    vim.hl.on_yank()
  end,
})

autocmd({"BufWritePre"}, {
    group = kursiv_group,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})


require("keymaps")
require("options")
