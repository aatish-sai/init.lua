local status, theme = pcall(require, "catppuccin")

if not status then
    return
end

theme.setup({
    flavour = "mocha",
    no_bold = true,
    term_colors = true,
    color_overrides = {
        mocha = {
            base = "#0f1119",
            mantle = "#090b10"
        }
    },
    integrations = {
        treesitter = true,
        treesitter_context = true,
        cmp = true,
        gitsigns = true,
        indent_blankline = {
            enabled = true
        },
        native_lsp = {
            enabled = true,
            virtual_text = {
                errors = { "italic" },
                hints = { "italic" },
                warnings = { "italic" },
                information = { "italic" },
            },
            underlines = {
                errors = { "undercurl" },
                hints = { "undercurl" },
                warnings = { "undercurl" },
                information = { "undercurl" },
            }
        }
    }
})

vim.cmd [[colorscheme catppuccin]]
