vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Options (migrated from init.vim)
vim.opt.number = true
vim.opt.ignorecase = true
vim.opt.hlsearch = true
vim.opt.listchars = { tab = ">-", trail = "-" }
vim.opt.list = true
vim.cmd("colorscheme catppuccin")

-- Add lazy.nvim to the runtime path
vim.opt.rtp:prepend(vim.fn.stdpath("data") .. "/lazy/lazy.nvim")

require("lazy").setup({
  -- File explorer: https://github.com/nvim-tree/nvim-tree.lua
  -- Windows: git clone https://github.com/folke/lazy.nvim.git `        $env:LOCALAPPDATA\nvim-data\lazy\lazy.nvim
  -- Linux/macOS: git clone https://github.com/folke/lazy.nvim.git \ ~/.local/share/nvim/lazy/lazy.nvim
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
})
