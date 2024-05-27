return {
  {
    "rebelot/kanagawa.nvim",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("kanagawa").setup({
        style = "night",
      })
      -- load the colorscheme here
      vim.cmd([[colorscheme kanagawa]])
    end,
  },
}
