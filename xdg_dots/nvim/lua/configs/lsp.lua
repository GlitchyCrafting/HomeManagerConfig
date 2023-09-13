require('mason').setup { ui = {border = 'double'} }

local on_attach = function(client, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local servers = {
    'html',
    'cssls',
    'bashls',
    'cmake',
    'marksman',
    'jsonls',
    'lua_ls',
    'pyright',
    'yamlls',
    'dockerls',
    'gdscript',
    'swift_mesonls'
}

for _, lsp in pairs(servers) do
    require('lspconfig')[lsp].setup {
        on_attach = on_attach,
        capabilities = capabilities,
        flags = {debounce_text_changes = 150}
    }
end

require('lspconfig').rust_analyzer.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        ['rust-analyzer'] = {
            imports = {
                granularity = {group = 'module'},
                prefix = self,
            },
            cargo = { buildScripts = {enable = true} },
            procMacro = {enable = true}
        }
    },
    filetypes = { 'rs', 'rust' },
}

require('lspconfig').clangd.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = {
        'clangd',
        '--background-index',
        '--pch-storage=memory',
        '--clang-tidy',
        '--suggest-missing-includes',
        '--all-scopes-completion',
        '--pretty',
        '--header-insertion=never',
        '-j=8',
        '--inlay-hints',
        '--header-insertion-decorators',
    },
    filetypes = { 'c', 'h', 'cpp', 'hpp' },
    root_dir = require('lspconfig').util.root_pattern('.git', 'compile_commands.json', 'compile_flags.txt')
}

require('lspconfig').html.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {'html', 'hxml', 'htmx', 'tera', 'hbs'},
}
