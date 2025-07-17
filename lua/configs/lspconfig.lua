local nvlsp = require "nvchad.configs.lspconfig"
local lspconfig = require "lspconfig"
local options = nvlsp

local servers = {
  -- For global ruby-lsp installation (uncomment and comment the bundle exec version below)
  -- ruby_lsp = {},
  
  -- For bundled ruby-lsp installation (current setup)
  ruby_lsp = {
    cmd = { "bundle", "exec", "ruby-lsp" },
    on_new_config = function(config)
      config.cmd_env = {
        BUNDLE_GEMFILE = vim.fn.getcwd() .. "/Gemfile",
        PATH = vim.env.PATH,
      }
    end,
  },
  html = {},
  cssls = {},
  lua_ls = {
    settings = {
      Lua = {
        diagnostics = { globals = { "vim" } },
      },
    },
  },
}

for server_name, custom_opts in pairs(servers) do
  local server_opts = vim.tbl_deep_extend("force", options, custom_opts or {})
  lspconfig[server_name].setup(server_opts)
end
