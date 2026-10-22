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
    -- Telescope
    { src = "https://github.com/nvim-lua/plenary.nvim" },
    { src = "https://github.com/nvim-telescope/telescope.nvim" },

    -- Oil (File Explorer)
    { src = "https://github.com/stevearc/oil.nvim" },

    -- Lualine
    { src = "https://github.com/nvim-tree/nvim-web-devicons" },
    { src = "https://github.com/nvim-lualine/lualine.nvim" },

    -- Autopairs
    { src = "https://github.com/nvim-mini/mini.nvim" },

    -- LSP, Mason
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/mason-org/mason.nvim" },
    { src = "https://github.com/mason-org/mason-lspconfig.nvim" },

    -- Diagnostic
    { src = "https://github.com/rachartier/tiny-inline-diagnostic.nvim" },

    -- Theme
    { src = "https://github.com/folke/tokyonight.nvim" },
})

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files)

-- Oil
require("oil").setup()
vim.keymap.set("n", "<leader>o", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Lualine
require("lualine").setup({
    options = {
        component_separators = { left = "", right = ""},
        section_separators = { left = "", right = ""},
    },
    sections = {
        lualine_a = {"mode"},
        lualine_b = {"branch", "diagnostics"},
        lualine_c = {"filename"},
        lualine_x = {"filetype"},
        lualine_y = {"progress"},
        lualine_z = {"location"}
    },
})

-- Autopairs, Completion
require("mini.pairs").setup()
require("mini.completion").setup()

-- LSP, Mason
require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "clangd", "gopls" },
}

-- Diagnostic
require("tiny-inline-diagnostic").setup({
    preset = "powerline",
})
vim.diagnostic.config({ virtual_text = false })

-- Theme
require("tokyonight").setup({
    style = "moon",
    styles = {
        comments = { italic = false },
        keywords = { italic = false },
      },
})
vim.cmd.colorscheme("tokyonight")
