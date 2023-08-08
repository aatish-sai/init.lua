local status, ts = pcall(require, "nvim-treesitter.configs")
if not status then
    return
end

local ts_context = require('treesitter-context')

ts.setup({
    ensure_installed = "all",
    sync_install = false,
    auto_install = true,
    indent = {
        enable = true
    },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    },
    rainbow = {
        enable = true,
        extended_mode = true
    },
    autotag = {
        enable = true
    },
})

ts_context.setup({
    max_lines = 3
})
