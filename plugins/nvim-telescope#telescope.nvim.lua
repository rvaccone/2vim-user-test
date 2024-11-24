return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require('telescope').setup({
  defaults = {
    layout_strategy = "horizontal"
  }
})
  end
}