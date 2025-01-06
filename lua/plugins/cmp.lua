return {
  {
    'saghen/blink.cmp',
    -- optional: provides snippets for the snippet source
    dependencies = {
      { 'rafamadriz/friendly-snippets' },
    },

    version = 'v0.*',

    opts = {
      keymap = { preset = 'default' },

      appearance = {
        use_nvim_cmp_as_default = true,
        -- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
        -- Adjusts spacing to ensure icons are aligned
        nerd_font_variant = 'mono'
      },

      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
      },
      completion = {
        menu = {
          border = 'rounded',
          draw = {
            columns = {
              { 'label',     'label_description', gap = 1 },
              { 'kind_icon', 'kind', 'source_name', gap = 1 }
            }
          }
        },
        documentation = {
          window = {
            border = 'rounded'
          }
        }
      },
      signature = {
        window = {
          border = 'rounded'
        },
        enabled = true
      }
    },
  },
}
