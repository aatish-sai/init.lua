local status, bufferline = pcall(require, "bufferline")

if not status then
    return
end
bufferline.setup({
    options = {
        buffer_close_icon = "",
        diagnostics = "nvim_lsp",
        show_buffer_close_icons = false,
        show_close_icon = false,
        separator_style = "thick",
    }
})

