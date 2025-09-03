return {
  "stevearc/oil.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "<leader>o", function() require("oil").open() end, desc = "Open Oil File Explorer" },
    { "-", "<cmd>Oil<CR>", desc = "Open Oil in Current Buffer" },
  },
  opts = {
    default_file_explorer = true,
    view_options = {
      show_hidden = true,
    },
  },
  config = function(_, opts)
    require("oil").setup(opts)
  end,
}
