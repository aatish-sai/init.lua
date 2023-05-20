local status, theme = pcall(require, "dracula")

if not status then
    return
end

theme.setup({
    show_end_of_buffer = false,
    transparent_bg = true
})

vim.cmd[[colorscheme dracula]]
