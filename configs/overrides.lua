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
        "squirrel",
        "jsonc",
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
        "html-lsp",
        "json-lsp",
        "pyright",
        "lua-language-server",
        "bash-debug-adapter",
        "bash-language-server",
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

M.nvterm = {
    terminals = {
        type_opts = {
            float = {
                row = 0.1,
                col = 0.1,
                width = 0.8,
                height = 0.7
            },
        },
    }
}

return M
