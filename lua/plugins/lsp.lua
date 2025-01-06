return {
  -- tools
  {
    "williamboman/mason.nvim",
    opts = {},
  },

  -- lsp servers
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      'saghen/blink.cmp',
      "williamboman/mason-lspconfig.nvim",
      { "j-hui/fidget.nvim", opts = {} },
    },
    opts = {
      servers = {
        lua_ls = {
          cmd = { "lua-language-server" },
          filetypes = { "lua" },
        },
      },
    },
    config = function(_, opts)
      -- import lspconfig plugin
      local capabilities = require('blink.cmp').get_lsp_capabilities()
      local lspconfig = require("lspconfig")
      local servers = {
        lua_ls = {
          capabilities = capabilities,
          settings = {
            Lua = {
              workspace = { checkThirdParty = false },
              telemetry = { enable = false },
              diagnostics = {
                globals = { "vim" },
              },
            },
          },
        },
      }

      local ensure_installed = vim.tbl_keys(servers or {})

      require("mason-lspconfig").setup({
        ensure_installed = ensure_installed,
        handlers = {
          function(server_name)
            local server = servers[server_name] or {}
            lspconfig[server_name].setup({
              cmd = server.cmd,
              settings = server.settings,
              filetypes = server.filetypes,
              capabilities = vim.tbl_deep_extend("force", {}, capabilities,
                server.capabilities or {}),
            })
          end,
        },
      })

      vim.diagnostic.config({
        float = {
          focusable = false,
          style = "minimal",
          border = "rounded",
          source = "always",
          header = "",
          prefix = "",
        },
      })

      -- Use LspAttach autocommand to only map the following keys
      -- after the language server attaches to the current buffer
      vim.api.nvim_create_autocmd("LspAttach", {
        group = vim.api.nvim_create_augroup("UserLspConfig", {}),
        callback = function(ev)
          local map = function(keys, func, desc)
            vim.keymap.set("n", keys, func,
              { buffer = ev.buf, desc = "LSP: " .. desc })
          end

          map("gd", require("telescope.builtin").lsp_definitions, "[G]oto [D]efinition")
          map("gr", require("telescope.builtin").lsp_references, "[G]oto [R]eferences")
          map("gi", require("telescope.builtin").lsp_implementations,
            "[G]oto [I]mplementation")
          map("<space>D", require("telescope.builtin").lsp_type_definitions,
            "Type [D]efinition")

          -- Buffer local mappings.
          -- See `:help vim.lsp.*` for documentation on any of the below functions
          map("gD", vim.lsp.buf.declaration, "[G]oto [D]ecleration")
          map("K", vim.lsp.buf.hover, "Hover Documentation")
          map("<space>rn", vim.lsp.buf.rename, "[R]e[n]ame")
          map("<space>ca", vim.lsp.buf.code_action, "[C]ode [A]ction")
          map("<C-k>", vim.lsp.buf.signature_help, "Signature Help")
        end,
      })
    end,
  },
}
