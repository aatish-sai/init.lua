local status, catppuccin = pcall(require, "catppuccin")

if not status then
    return
end

catppuccin.setup({
    flavor="macchiato"
})

vim.cmd.colorscheme "catppuccin"
