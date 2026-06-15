return {
  'stevearc/oil.nvim',
  keys = {
    { '<leader>ol', '<cmd>Oil<CR>', desc = 'OiL' },
    { '<leader>of', '<cmd>Oil<CR>', desc = 'Oil Float' },
  },
  opts = {
    view_options = {
      show_hidden = true,
    },
    float = {
      padding = 5,
    },
  },
  -- Optional dependencies
  dependencies = { 'nvim-tree/nvim-web-devicons' },
}
