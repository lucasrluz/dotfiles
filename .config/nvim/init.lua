require("config")
require("plugins")
require("plugin-lsp")

require("solarized-osaka").setup({
  transparent = false,
  styles = {
    comments = { italic = false },
    keywords = { italic = false },
  },
})

vim.cmd[[colorscheme solarized-osaka]]
