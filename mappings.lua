---@type MappingsTable
local M = {}

M.general = {
    n = {
        [";"] = { ":", "enter command mode", opts = { nowait = true } },
        ["<leader>q"] = { ":q<cr>", "quit" }
    },


    v = {
        [">"] = { ">gv", "indent" },
    },
}


M.preview = {
    n = {
        ["gr"] = {
            function()
                require("goto-preview").goto_preview_references()
            end,
            "LSP Preview References",
        },

        ["gd"] = {
            function()
                require("goto-preview").goto_preview_definition()
            end,
            "LSP Preview Definition",
        },

        ["gD"] = {
            function()
                require("goto-preview").goto_preview_declaration()
            end,
            "LSP Preview Declaration",
        },

        ["gi"] = {
            function()
                require("goto-preview").goto_preview_implementation()
            end,
            "LSP Preview Implementation",
        },

        ["gt"] = {
            function()
                require("goto-preview").goto_preview_type_definition()
            end,
            "LSP Go To Type Definition",
        },

    }
}

M.dap = {
    n = {
        ["<F5>"] = {
            function()
                require("dap").continue()
            end,
            "Debug Run/Continue",
        },

        ["<F10>"] = {
            function()
                require("dap").step_over()
            end,
            "Debug Step Over"
        },

        ["<F11>"] = {
            function()
                require("dap").step_into()
            end,
            "Debug Step Into"
        },

        ["<S-F11>"] = {
            function()
                require("dap").step_out()
            end,
            "Debug Step Out",
        },

        ["<F9>"] = {
            function()
                require("dap").toggle_breakpoint()
            end,
            "Debug Set Breakpoint",
        },

        ["<S-F9>"] = {
            function()
                require("dap").set_breakpoint(vim.fn.input('Breakpoint condition: '))
            end,
            "Debug Set Condition Breakpoint",
        },

    },
}


M.dapui = {
    n = {
        ["<leader>d?"] = {
            function()
                require("dapui").eval()
            end,
            "DAP Evaluate",
        },

        ["<leader>do"] = {
            function()
                require("dapui").open()
            end,
            "DAP Open",
        },

        ["<leader>dq"] = {
            function()
                require("dapui").close()
            end,
            "DAP Close",
        },
    },
}


M.dap_python = {
    n = {
        ["<leader>tc"] = {
            function()
                require("dap-python").test_class()
            end,
            "Python Test Class",
        },

        ["<leader>tm"] = {
            function()
                require("dap-python").test_method()
            end,
            "Python Test Method",
        },
    },
}


M.trouble = {
    n = {
        ["<leader>tt"] = {
            function()
                require("trouble").toggle()
            end,
            "Toggle Trouble",
        },

        ["<leader>tw"] = {
            function()
                require("trouble").toggle("workspace_diagnostics")
            end,
            "Toggle Trouble Workspace",
        },

        ["<leader>td"] = {
            function()
                require("trouble").toggle("document_diagnostics")
            end,
            "Toggle Trouble Document",
        },

        ["<leader>tq"] = {
            function()
                require("trouble").toggle("quickfix")
            end,
            "Trouble Quick Fix",
        },

        ["<leader>tl"] = {
            function()
                require("trouble").toggle("loclist")
            end,
            "Trouble Loc List",
        },
    },
}

return M
