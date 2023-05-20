local status, ts = pcall(require, "nvim-treesitter.configs")
if not status then
    return
end

ts.setup({
    ensure_installed = {
        "javascript",
        "typescript",
        "lua",
        "yaml",
        "json",
        "tsx",
        "css",
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
    indent = {
        enable = true
    },
    sync_install = false,
})
