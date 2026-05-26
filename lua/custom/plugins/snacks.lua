-- lazy.nvim
return {
  'folke/snacks.nvim',
  ---@type snacks.Config
  opts = {
    lazygit = {
      -- your lazygit configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
  keys = {
    {
      '<leader>gl',
      function()
        Snacks.lazygit()
      end,
      desc = 'Open LazyGit',
    },
  },
}
