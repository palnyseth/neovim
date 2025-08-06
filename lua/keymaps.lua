-- Clear highlight in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = 'Go to file tree'})
vim.keymap.set('n', '<leader>x', '<cmd>.lua<CR>', { desc = 'Execute the current line' })
vim.keymap.set('n', '<leader><leader>x', '<cmd>source %<CR>', { desc = 'Execute the current file' })

-- Focus moving
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })


-- Copying and pasting
vim.keymap.set("x", "<leader>p", [["_dP]]) -- Paste without overwriting default register
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]]) -- Copies to system clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]]) -- Copies to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>d", "\"_d") -- Blackhole (deletes without putting into register)

vim.keymap.set("i", "<C-c>", "<Esc>") -- Ctrl+C = Esc in insert mode

-- Conform (format) -- TODO: Enable when added the plugin
 vim.keymap.set("n", "<leader>f", function()
     require("conform").format({ bufnr = 0 })
 end)

