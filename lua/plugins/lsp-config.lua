---@type LazySpec
return {
    {
        -- lsp配置
        'neovim/nvim-lspconfig',
        dependencies = { 'williamboman/mason.nvim', 'williamboman/mason-lspconfig.nvim', },
        version = '*',
        config = function()
            vim.lsp.inlay_hint.enable(0, true)
            vim.keymap.set('n', '<Leader>r', vim.lsp.buf.rename)
            vim.keymap.set({'n','x'}, '<Leader>l', function() vim.lsp.buf.format({ async = true }) end)
        end,
    },
    {
        -- 安装lsp
        'mason-org/mason.nvim',
        version = '*',
        opts = {
        },
    },
    {
        'mason-org/mason-lspconfig.nvim',
        dependencies = { 'mason-org/mason.nvim' },
        version = '*',
        opts = {
            ensure_installed = { 'vimls', 'lua_ls' },
        },
    },
    {
        -- neovim和lazy的支持
        'folke/lazydev.nvim',
        ft = 'lua',
        opts = {
            library = {
                'lazy.nvim',
                { path = '${3rd}/luv/library', word = { 'vim%.uv' } },
            },
        },
    },
}
