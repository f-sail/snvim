---@type nvim-lspconfig.config
return {
    "neovim/nvim-lspconfig",
    event = {
        "BufReadPost",
        "BufNewFile" ,
    },
    cmd = {
        "LspInfo",
        "LspInstall",
        "LspUninstall",
    },
    dependencies = {
        require("plugin.lsp.goto-preview"),
        require("plugin.lsp.mason-lspconfig"),
    },
    config = function()
        -- local lspconfig = require("lspconfig")
        -- lspconfig["lua_ls"].setup()
        -- lspconfig["clangd"].setup()
        require("lspconfig").lua_ls.setup{}
        require("lspconfig").clangd.setup({
            cmd = {'clangd', '--background-index', '--clang-tidy', '--log=verbose'},
            init_options = {
                fallbackFlags = { '-std=c++17' },
            },
        })
        -- 报错信息
        vim.diagnostic.config({
            virtual_text = true,        -- 在行尾显示错误简讯
            signs = true,               -- 左侧显示错误图标
            underline = true,           -- 错误代码下方显示波浪线
            update_in_insert = false,
            severity_sort = true,
        })
        -- 快捷键绑定（按需修改）
        vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = "显示错误详情" })
        vim.keymap.set('n', 'gp', vim.diagnostic.goto_prev, { desc = "上一个诊断" })
        vim.keymap.set('n', 'gn', vim.diagnostic.goto_next, { desc = "下一个诊断" })
    end
}
