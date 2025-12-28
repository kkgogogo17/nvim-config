return {
  "neovim/nvim-lspconfig",
  event = "LazyFile",
  dependencies = {
    "mason.nvim",
    { "mason-org/mason-lspconfig.nvim", config = function() end },
  },
  opts = function(_, opts)
    opts.diagnostics = {
      underline = true,
      update_in_insert = false,
      virtual_text = {
        spacing = 4,
        source = "if_many",
        prefix = "●",
      },
      severity_sort = true,
      signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = "E",
          [vim.diagnostic.severity.WARN] = "W",
          [vim.diagnostic.severity.HINT] = "H",
          [vim.diagnostic.severity.INFO] = "I",
        },
      },
    }

    opts.inlay_hints = opts.inlay_hints or {}
    opts.inlay_hints.enabled = false
    opts.inlay_hints.exclude = { "vue" }

    opts.codelens = opts.codelens or {}
    opts.codelens.enabled = false

    opts.servers = opts.servers or {}
    opts.servers.gopls = {
      settings = {
        gopls = {
          hints = {
            assignVariableTypes = false,
            compositeLiteralFields = false,
            compositeLiteralTypes = false,
            constantTypes = false,
            functionLiteralTypes = false,
            parameterNames = false,
            rangeVariableTypes = false,
            receiverTypes = false,
            returnVariableTypes = false,
          },
        },
      },
    }

    opts.servers.pyright = {
      settings = {
        pyright = {
          disableOrganizeImports = true,
        },
        python = {
          analysis = {
            ignore = { "*" },
            typeCheckingMode = "off",
          },
        },
      },
    }

    opts.setup = opts.setup or {}

    return opts
  end,
}
