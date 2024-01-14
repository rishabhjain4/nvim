return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.black,
      null_ls.builtins.formatting.isort,
      null_ls.builtins.formatting.gofumpt,
      null_ls.builtins.formatting.markdownlint,
      null_ls.builtins.formatting.cbfmt,
      null_ls.builtins.formatting.mdformat,
      null_ls.builtins.diagnostics.markdownlint_cli2,
      null_ls.builtins.formatting.prettier,
    })

    vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
  end
}
