return {}
--[[ local lsp_config = require("custom.lsp_config")

function jdtls_conf()
  local home = os.getenv("HOME")
  local root_markers = { "pom.xml", "gradle.build", "gradlew", "mvnw", ".git" }
  local root_dir = require("jdtls.setup").find_root(root_markers)
  local workspace_folder = home .. "/.cache/nvim/java-workspace"

  return {
    flags = {
      debounce_text_changes = 80,
    },
    on_attach = lsp_config.on_attach,
    root_dir = root_dir,

    -- These are defined by the eclipse.jdt.ls project and will be passed to eclipse when starting.
    -- See https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
    -- for a list of options
    settings = {
      java = {
        signatureHelp = { enabled = true },
        contentProvider = { preferred = 'fernflower' },  -- Use fernflower to decompile library code
        -- Specify any completion options
        completion = {
          filteredTypes = {
            "com.sun.*",
            "io.micrometer.shaded.*",
            "java.awt.*",
            "jdk.*", "sun.*",
          },
        },
        -- How code generation should act
        codeGeneration = {
          toString = {
            template = "${object.className}{${member.name()}=${member.value}, ${otherMembers}}"
          },
          useBlocks = true,
        },
      }
    },
    -- cmd is the command that starts the language server. Whatever is placed
    -- here is what is passed to the command line to execute jdtls.
    -- Note that eclipse.jdt.ls must be started with a Java version of 17 or higher
    -- See: https://github.com/eclipse/eclipse.jdt.ls#running-from-the-command-line
    -- for the full list of options
    cmd = {
      "/usr/bin/java",
      '-Declipse.application=org.eclipse.jdt.ls.core.id1',
      '-Dosgi.bundles.defaultStartLevel=4',
      '-Declipse.product=org.eclipse.jdt.ls.core.product',
      '-Dlog.protocol=true',
      '-Dlog.level=ALL',
      '-Xmx4g',
      '--add-modules=ALL-SYSTEM',
      '--add-opens', 'java.base/java.util=ALL-UNNAMED',
      '--add-opens', 'java.base/java.lang=ALL-UNNAMED',
      '-data', workspace_folder,
    },
  }
end ]]

--[[ return {
  "nvim-java/nvim-java",
  on_attach = lsp_config.on_attach,
  capabilities = lsp_config.capabilities,
  dependencies = {
    'nvim-java/lua-async-await',
    'nvim-java/nvim-java-core',
    'nvim-java/nvim-java-test',
    'nvim-java/nvim-java-dap',
    'MunifTanjim/nui.nvim',
    'neovim/nvim-lspconfig',
    'mfussenegger/nvim-dap',
    'nvim-lua/plenary.nvim',
    'mfussenegger/nvim-jdtls',
    'mfussenegger/nvim-dap',
  },
  config = function()
    require("java").setup()
    require("lspconfig").jdtls.setup({})

    require("jdtls").start_or_attach(jdtls_conf())
  end,
  filetypes = { 'java' },
} ]]
