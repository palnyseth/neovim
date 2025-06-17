local autocmd = vim.api.nvim_create_autocmd
autocmd('BufEnter', {
  callback = function()
    if vim.bo.filetype == 'zig' then
      vim.cmd.colorscheme 'tokyonight-night'
    else
      vim.cmd.colorscheme 'tokyonight-storm'
    end
  end,
})
