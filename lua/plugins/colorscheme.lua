return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
      styles = { },
  },
    init = function()
      vim.cmd [[colorscheme tokyonight-night]]
    end,
  },
}
