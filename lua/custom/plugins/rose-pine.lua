return {
    -- Theme inspired by Rose pine actually is rose pine
    'rose-pine/neovim',
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'rose-pine'
    end,
}