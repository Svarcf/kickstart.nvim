return {
  'sindrets/diffview.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- optional but nice
  },
  keys = {
    { '<leader>gv', '<cmd>DiffviewOpen<cr>', desc = 'Git Diff (repo)' },
    { '<leader>gV', '<cmd>DiffviewFileHistory %<cr>', desc = 'File History (current file)' },
    { '<leader>gq', '<cmd>DiffviewClose<cr>', desc = 'Close Diffview' },
  },
  config = function()
    require('diffview').setup {
      enhanced_diff_hl = true,
      use_icons = true,
      file_panel = { position = 'left', width = 35 },
      file_history_panel = { position = 'right', width = 40 },
      signs = {
        fold_closed = '▸',
        fold_open = '▾',
      },
    }
  end,
}
