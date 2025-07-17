local options = {
  -- Define the formatters to use for each filetype
  formatters_by_ft = {
    lua = { "stylua" },
    ruby = { "rubocop" },
    eruby = { "erb_formatter" },
    css = { "prettier" },
    html = { "prettier" },
  },

  -- Custom formatter configurations
  -- formatters = {
  --   rubocop = {
  --     command = "bundle",
  --     args = { "exec", "rubocop", "--autocorrect-all", "--format", "quiet", "$FILENAME" },
  --     stdin = false,
  --     cwd = require("conform.util").root_file({ "Gemfile" }),
  --   },
  -- },

  -- -- Enable format on save
  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 5000000, -- Increased timeout for RuboCop
  --   lsp_fallback = true,
  -- },
}

return options
