return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha",
      integrations = {
        alpha = true,
        neotree = true,
        noice = true,
        dap = true,
        dap_ui = true,
        notify = true,
      }
    })
    vim.cmd.colorscheme "catppuccin"
  end
}
