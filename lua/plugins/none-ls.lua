return {
  "nvimtools/none-ls.nvim",
  optional = true,
  opts = function(_, opts)
    local nls = require("null-ls")

    local formatting = nls.builtins.formatting
    opts.sources = opts.sources or {}
    vim.list_extend(opts.sources, {
      formatting.prettier,
    })
  end,
}
