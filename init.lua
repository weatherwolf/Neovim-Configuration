vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Options (migrated from init.vim)
vim.opt.number = true
vim.opt.ignorecase = true
vim.opt.hlsearch = true
vim.opt.listchars = { tab = ">-", trail = "-" }
vim.opt.list = true
vim.cmd("colorscheme catppuccin")

-- Bootstrap lazy.nvim (auto-installs if not present)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- File explorer: https://github.com/nvim-tree/nvim-tree.lua
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup({
        sort_by = "case_sensitive",
        view = {
          width = 30,
        },
      })
    end,
  },
  {
    "gelguy/wilder.nvim",
    config = function()
      local wilder = require("wilder")
      wilder.setup({ modes = { ":", "/", "?" } })
    end,
  },
  -- Comfy line numbers: https://github.com/mluders/comfy-line-numbers.nvim
  {
    "mluders/comfy-line-numbers.nvim",
    config = function()
      require("comfy-line-numbers").setup({
        labels = {
          '1', '2', '3', '4', '5', '11', '12', '13', '14', '15', '21', '22', '23',
          '24', '25', '31', '32', '33', '34', '35', '41', '42', '43', '44', '45',
          '51', '52', '53', '54', '55', '111', '112', '113', '114', '115', '121',
          '122', '123', '124', '125', '131', '132', '133', '134', '135', '141',
          '142', '143', '144', '145', '151', '152', '153', '154', '155', '211',
          '212', '213', '214', '215', '221', '222', '223', '224', '225', '231',
          '232', '233', '234', '235', '241', '242', '243', '244', '245', '251',
          '252', '253', '254', '255',
        },
        up_key = 'k',
        down_key = 'j',
        hidden_file_types = { 'undotree' },
        hidden_buffer_types = { 'terminal', 'nofile' },
      })
    end,
  },
})
