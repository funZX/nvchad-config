local M = {}

M.treesitter = {
    ensure_installed = {
        "c",
        "cpp",
        "python",
        "julia",
        "go",
        "rust",
        "robot",
        "lua",
        "typescript",
        "html",
        "tmux",
        "vim",
        "vimdoc",
        "markdown",
        "markdown_inline",
    },
    indent = {
        enable = true,
    },
}

M.mason = {
    ensure_installed = {
        "codelldb",

        "html-lsp",

        "json-lsp",

        "pyright",

        "bash-debug-adapter",
        "bash-language-server",

        "robotframework-lsp",

        "lua-language-server",
    },
}

-- git support in nvimtree
M.nvimtree = {
    git = {
        enable = true,
    },

    renderer = {
        highlight_git = true,
        icons = {
            show = {
                git = true,
            },
        },
    },
}

return M
