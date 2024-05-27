return {
  "nvim-treesitter/nvim-treesitter-textobjects",
  lazy = true,
  config = function()
    require("nvim-treesitter.configs").setup({
      textobjects = {
        select = {
          enable = true,

          -- Automatically jump forward to textobj, similar to targets.vim
          lookahead = true,

          keymaps = {
            -- You can use the capture groups defined in textobjects.scm
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",

            ["ab"] = { query = "@block.outer", desc = "Select outer part of block" },
            ["ib"] = { query = "@block.inner", desc = "Select inner part of block" },
            ["ir"] = { query = "@return.inner", desc = "Select inner part of return" },
            ["ar"] = { query = "@return.outer", desc = "Select outer part of return" },
            ["ic"] = { query = "@conditional.inner", desc = "Select inner part of conditional" },
            ["ac"] = { query = "@conditional.outer", desc = "Select outer part of conditional" },
            ["al"] = { query = "@loop.outer", desc = "Select outer part of loop" },
            ["il"] = { query = "@loop.inner", desc = "Select inner part of loop" },
            ["ip"] = { query = "@parameter.inner", desc = "Select inner part of parameter" },
            ["ap"] = { query = "@parameter.outer", desc = "Select outer part of parameter" },

            -- You can also use captures from other query groups like `locals.scm`
          },
          selection_modes = {
            ["@parameter.outer"] = "v", -- charwise
            ["@function.outer"] = "V", -- linewise
            ["@class.outer"] = "<c-v>", -- blockwise
          },
          include_surrounding_whitespace = true,
        },
      },
    })
  end,
}
