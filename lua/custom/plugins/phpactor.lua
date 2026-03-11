-- Lua
return {
  {
    'gbprod/phpactor.nvim',
    ft = 'php',
    dependencies = {
      'nvim-lua/plenary.nvim',
      -- If the update/install notification doesn't show properly,
      -- you should also add here UI plugins like "folke/noice.nvim" or "stevearc/dressing.nvim"
    },
    opts = {
      -- you're options goes here
      cmd = { 'phpactor', 'language-server' },
      filetypes = { 'php' },
      root_markers = { '.git', 'composer.json', '.phpactor.json', '.phpactor.yml' },
      workspace_required = true,
      init_options = {
        ['language_server_phpstan.enabled'] = false,
        ['language_server_psalm.enabled'] = false,
      },
    },
  },
}
