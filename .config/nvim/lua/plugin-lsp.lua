vim.lsp.config("clangd", {
    filetypes = { "c" }
})

vim.lsp.enable("clangd")

vim.diagnostic.config({
    virtual_text = false,        -- remove texto inline
    signs = true,                -- ícones na gutter
    underline = true,            -- sublinha o erro
    severity_sort = true,        -- erros > avisos
    update_in_insert = false,    -- não perturba enquanto digita
    float = {
        border = "rounded",
        source = "always",
    },
})

vim.keymap.set("n", "gd", function()
  vim.cmd("tab split")
  vim.lsp.buf.definition()
end)
vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename)
vim.keymap.set("n", "<leader>ld", vim.diagnostic.open_float)
