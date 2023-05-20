local status, lualine = pcall(require, "lualine")
if not status then
    return
end

local filetype = {
    "filetype",
    icons_enabled = false
}

lualine.setup({
    options = {
        globalstatus = true,
        icons_enabled = false,
        theme = "dracula",
        component_separator = { left = "", right = "" },
        section_separator = { left = "", right = "" },
        always_divide_middle = true
    },
    sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff" },
        lualine_c = { "filename" },
        lualine_x = { "diagnostics", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" }
    },
    inavtive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {}
    }
})
