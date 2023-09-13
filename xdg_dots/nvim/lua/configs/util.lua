require('Comment').setup {}

require('todo-comments').setup {}

require('nvim-autopairs').setup {}

require('tidy').setup {}

require('indent_blankline').setup {
    space_char_blankline = ' ',
    show_current_context = true,
    show_current_context_start = true,
}

require('nvim-treesitter.configs').setup {
    autotag = {enable = true},
    highlight = {enable = true},
    auto_install = true,
    ensure_installed = {
        'c',
        'cpp',
        'rust',
        'lua',
        'python',
        'html',
        'css',
        'javascript',
        'json',
        'json5',
        'yaml',
        'toml',
        'bash',
        'cmake',
        'comment',
        'dockerfile',
        'gdscript',
        'godot_resource',
        'gitignore',
        'make',
        'markdown',
        'markdown_inline',
        'regex',
        'ron',
        'rst',
        'scss',
    },
}
