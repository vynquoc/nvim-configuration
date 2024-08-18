return {
  {
    "rebelot/kanagawa.nvim",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("kanagawa").setup({
        style = "night",
        overrides = function(colors)
          local theme = colors.theme
          return {
            Normal = { bg = "#191818" }, -- Change this to your desired background color
          }
        end,
      })
      -- load the colorscheme here
      vim.cmd([[colorscheme kanagawa]])
    end,
  },
}
