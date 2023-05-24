local status, theme = pcall(require, "rose-pine")

if not status then
    return
end

theme.setup({
    style="night",
    show_end_of_buffer = false,
    transparent_bg = true
})

vim.cmd[[colorscheme rose-pine]]
