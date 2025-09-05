-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- setup must be called before loading
vim.cmd("colorscheme nightfox")

-- PDF versions based on operating system
if vim.fn.has("win32") == 1 then
  vim.g.vimtex_view_method = "sumatrapdf"
  vim.g.vimtex_view_general_viewer = "C:\\Program Files\\SumatraPDF\\SumatraPDF.exe"
  vim.g.vimtex_view_general_options = "-reuse-instance -forward-search @tex @line @pdf"
  vim.g.vimtex_view_general_options_latexmk = "-reuse-instance"
elseif vim.fn.has("unix") == 1 then
  vim.g.vimtex_view_method = "zathura"
end

-- Adding a reference line at 80 characters
vim.opt.colorcolumn = "80" -- or any column number you prefer

require("oil").setup()
