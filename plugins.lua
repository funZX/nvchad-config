local overrides = require("custom.configs.overrides")

local plugins = {

    {
        "2KAbhishek/nerdy.nvim",

        opts = {},
        config = function(_, opts)
            require("telescope").load_extension("nerdy")
        end,
    },


    -- override plugin configs
    {
        "williamboman/mason.nvim",
        opts = overrides.mason
    },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = overrides.treesitter,
    },

    {
        "nvim-tree/nvim-tree.lua",
        opts = overrides.nvimtree,
    },

    {
        "NvChad/nvterm",
        opts = overrides.nvterm,
    },


    {
        "mfussenegger/nvim-dap-python",

        config = function(_, opts)
            require("core.utils").load_mappings "dap_python"
        end,
    },


    {
        "mfussenegger/nvim-dap",

        init = function()
            require("core.utils").load_mappings "dap"
        end,

        config = function(_, opts)
            require("dap-python").setup("~/.local/venv/debugpy/bin/python", { test_runner = "unittest" })
            require("custom.configs.dap")
        end,
    },


    {
        "rcarriga/nvim-dap-ui",
        init = function()
            require("core.utils").load_mappings "dapui"
        end,

        config = function(_, opts)
            require("dapui").setup(opts)
        end,
    },



    {
        "folke/neodev.nvim",
        opts = {
            library = {
                plugins = { "nvim-dap-ui", "nvim-treesitter", "plenary.nvim", "telescope.nvim" },
                types = true,
            },
        },
        config = function(_, opts)
            require("neodev").setup(opts)
        end,
    },


    {
        "nvimdev/lspsaga.nvim",
        event = "LspAttach",

        init = function()
            require("core.utils").load_mappings "lsp"
        end,

        opts = {
            symbol_in_winbar = { enable = false }
        },
        config = function(_, opts)
            require("lspsaga").setup(opts)
        end,
    },

    "folke/neoconf.nvim",
    {
        "neovim/nvim-lspconfig",

        init = function()
            vim.opt.expandtab = true
            vim.opt.shiftwidth = 4
            vim.opt.smartindent = true
            vim.opt.tabstop = 4
            vim.opt.softtabstop = 4
        end,

        config = function(_, opts)
            require "neoconf".setup()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end,
    },


    "MunifTanjim/nui.nvim",
    {
        "jackMort/ChatGPT.nvim",
        event = "VeryLazy",
        config = function()
            require("chatgpt").setup()
        end,
    }
}

return plugins
