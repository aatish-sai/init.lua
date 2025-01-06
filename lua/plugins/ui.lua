return {
  {
    "folke/todo-comments.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = { signs = false },
  },
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        icons_enabled = false,
        globalstatus = true,
        theme = "16color",
        section_separators = "",
        component_separators = "",
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { { "branch", icons_enabled = false }, "diff" },
        lualine_c = {
          { "filename", file_status = true, path = 1 },
        },
        lualine_x = {
          { "diagnostics", sources = { "nvim_diagnostic" } },
          "encoding",
        },
        lualine_y = { "filetype" },
        lualine_z = { "location" },
      },
    },
  },
}
