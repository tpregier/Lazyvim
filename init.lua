-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- setup must be called before loading
vim.cmd("colorscheme nightfox")

-- PDF versions based on operating system
if vim.fn.has("win32") == 1 then
  vim.g.vimtex_view_method = "sumatrapdf"
elseif vim.fn.has("unix") == 1 then
  vim.g.vimtex_view_method = "zathura"
end

-- Adding a reference line at 80 characters
vim.opt.colorcolumn = "80" -- or any column number you prefer

require("oil").setup()

-- Markdown
return {
  "iamcco/markdown-preview.nvim",
  ft = { "markdown" },
  build = function()
    vim.fn["mkdp#util#install"]()
  end,
  cmd = { "MarkdownPreview", "MarkdownPreviewToggle", "MarkdownPreviewStop" },
}
