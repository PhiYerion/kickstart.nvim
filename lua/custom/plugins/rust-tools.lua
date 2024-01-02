return {
  'simrat39/rust-tools.nvim',
  filetypes = { 'rust', 'rs', 'toml' },
  dependencies = 'neovim/nvim-lspconfig',
  on_attach = function(client, bufnr)
    require('rust-tools').setup({
      tools = {
        runnables = {
          use_telescope = true,
        },
        inlay_hints = {
          show_parameter_hints = true,
          auto = true,
        },
      },
      -- https://rust-analyzer.github.io/manual.html#nvim-lsp
      server = {
        on_attach = function(client, bufnr)
          local rt = require('rust-tools')
          -- set options
          rt.inlay_hints.enable()
          on_attach(client, bufnr)

          -- keybinds
          vim.keymap.set("n", "<leader>ch", rt.hover_actions.hover_actions,
            { desc = 'Hover actions for rust using rust tools' })
          -- Code action groups
          vim.keymap.set("n", "<Leader>cra", rt.code_action_group.code_action_group,
            { desc = 'code action group / lsp actions / rust actions' })
          vim.keymap.set("n", "<leader>cd", ':ResutDebuggables<CR>', { desc = 'Debug rust code' })
          vim.keymap.set("n", "<leader>ce", ':RustExpandMacro<CR>', { desc = 'Expand rust macro' })
        end,
        filetypes = { "rust" },
        settings = {
          ["rust-analyzer"] = {
            assist = {
              expressionFillDefault = "todo",
            },
            check = {
              command = "clippy"
            },
            imports = {
              granularity = {
                group = "module",
              },
              prefix = "self",
            },
            cargo = {
              buildScripts = {
                enable = true,
              },
              features = "all",
            },
            procMacro = {
              enable = true
            },
            completion = {
              autoimport = {
                enable = true,
              }
            },
            inlay_hints = {
              bindingModeHints = {
                enable = true,
              },
              closureCaptureHints = {
                enable = true,
              },
            }
          }
        }
      }
    })
  end,
}
