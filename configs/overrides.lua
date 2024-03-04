local M = {}

M.treesitter = {
    ensure_installed = {
        "c",
        "cpp",
        "python",
        "go",
        "rust",
        "robot",
        "lua",
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
