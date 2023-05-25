local status, theme = pcall(require, "dracula")

if not status then
    return
end

theme.setup({
})

vim.cmd[[colorscheme dracula]]
