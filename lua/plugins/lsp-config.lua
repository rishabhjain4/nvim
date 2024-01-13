return {
  {
    "williamboman/mason.nvim",
  config = function()
    require("mason").setup()
  end
  },
  {
  "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {"lua_ls","marksman","gopls"}
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local opts = {}
      local lspconfig = require('lspconfig')
      lspconfig.lua_ls.setup{}
      lspconfig.marksman.setup{}
      vim.keymap.set('n','K', vim.lsp.buf.hover,{})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
    end
  }
}
