return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
      styles = { },
      on_colors = function (colors)
        colors.bg = "#000000"
        colors.bg_float = "#000000"
      end
  },
    init = function()
      vim.cmd [[colorscheme tokyonight-night]]
    end,
  },
}
