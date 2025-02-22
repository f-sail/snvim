---@type lsp.mason-lspconfig
return {
    "williamboman/mason-lspconfig.nvim",
    event = "VeryLazy",
    dependencies = {
        require("plugin.lsp.mason"),
    },
    opts = {
        ensure_installed = {
            "lua_ls",
            -- "pyright",
            -- "rust_analyzer",
            "clangd",
        },
    },
}
