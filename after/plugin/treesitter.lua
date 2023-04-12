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
    sync_install = false,
    highlight == {
        enable = true,
        additional_vim_regex_highlighting = false
    }
})
