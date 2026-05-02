-------------------------------- REMAPS --------------------------------
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-------------------------------- OPTIONS --------------------------------
vim.opt.number = true

vim.opt.scrolloff = 8

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

-------------------------------- PLUGINS --------------------------------
vim.pack.add({
    { src = "https://github.com/stevearc/oil.nvim"},
    { src = "https://github.com/windwp/nvim-autopairs" },
    
    { src = "https://github.com/nvim-lua/plenary.nvim" },
    { src = "https://github.com/nvim-telescope/telescope.nvim" },

    { src = "https://github.com/nvim-treesitter/nvim-treesitter"},
    { src = "https://github.com/bluz71/vim-moonfly-colors"},
})

-- Oil
require("oil").setup()
vim.keymap.set("n", "<leader>pv", "<cmd>Oil<CR>")
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Autopairs
require("nvim-autopairs").setup()

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files)

-- TreeSitter
local treesitter = require("nvim-treesitter")

treesitter.setup({
    install_dir = vim.fn.stdpath('data') .. '/site',
    highlight = { enable = true }
})

treesitter.install({
    "go", "lua"
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "go", "lua" },
    callback = function() vim.treesitter.start() end,
})

-- Color Scheme
vim.cmd[[colorscheme moonfly]]
