return {
  'sindrets/diffview.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
  },
  keys = {
    { '<leader>gv', '<cmd>DiffviewOpen<cr>', desc = 'Git Diff (repo)' },
    {
      '<leader>gV',
      '<cmd>DiffviewFileHistory % --panel-layout=diff2_vertical --file-panel-position=bottom<cr>',
      desc = 'File History (current file) bottom panel',
    },
    { '<leader>gq', '<cmd>DiffviewClose<cr>', desc = 'Close Diffview' },
  },
  config = function()
    require('diffview').setup {
      enhanced_diff_hl = true,
      use_icons = true,
      view = {
        -- ensures diff2_vertical is available for two side-by-side diffs
        default = {
          layout = 'diff2_vertical',
        },
        merge_tool = {
          layout = 'diff2_vertical',
          disable_diagnostics = true,
        },
      },
      file_panel = {
        position = 'bottom', -- place file panel (history) below the diffs
        listing_style = 'tree',
        win_config = { height = 12 },
      },
      file_history_panel = {
        position = 'bottom',
        win_config = { height = 12 },
      },
      signs = {
        fold_closed = '▸',
        fold_open = '▾',
      },
    }
  end,
}
