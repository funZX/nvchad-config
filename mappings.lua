---@type MappingsTable
local M = {}

M.disabled = {
    n = {
        ["<leader>fm"] = "",
        ["<leader>lf"] = "",
        ["<leader>ra"] = "",
        ["C-n"] = "",
    },
}

M.general = {
    n = {
        ["<leader>q"] = { ":q<cr>", "quit" },
        ["<leader>e"] = { "<cmd> NvimTreeToggle <cr>", "Toggle nvimtree" },
    },


    v = {
        [">"] = { ">gv", "Indent" },
    },
}


M.lsp = {
    n = {
        ["<leader>gr"] = {
            ":Lspsaga finder <cr>", "LSP References", opts = { silent = true }
        },
        ["<leader>ga"] = {
            ":Lspsaga code_action <cr>", "LSP Code Actions", opts = { silent = true }
        },
        ["K"] = {
            ":Lspsaga hover_doc <cr>", "LSP Hover", opts = { silent = true }
        },
        ["<leader>gd"] = {
            ":Lspsaga goto_definition <cr>", "LSP GoTo definition", opts = { silent = true }
        },
        ["<leader>gD"] = {
            ":Lspsaga peek_definition <cr>", "LSP Peek Definition", opts = { silent = true }
        },
        ["<leader>gt"] = {
            ":Lspsaga goto_type_definition <cr>", "LSP GoTo Type Definition", opts = { silent = true }
        },
        ["<leader>gT"] = {
            ":Lspsaga peek_type_definition <cr>", "LSP Peek Type Definition", opts = { silent = true }
        },
        ["<leader>g?"] = {
            ":Lspsaga show_line_diagnostics <cr>", "LSP Line Diagnostic", opts = { silent = true }
        },
        ["<leader>gg"] = {
            ":Lspsaga show_buf_diagnostics <cr>", "LSP Buffer Diagnostic", opts = { silent = true }
        },
        ["<leader>gG"] = {
            ":Lspsaga show_workspace_diagnostics <cr>", "LSP Diagnostics", opts = { silent = true }
        },
        ["<leader>gR"] = {
            ":Lspsaga rename <cr>", "LSP Rename", opts = { silent = true }
        },
        ["<leader>g["] = {
            ":Lspsaga diagnostic_jump_prev <cr>", "LSP Prev Diagnostic", opts = { silent = true }
        },
        ["<leader>g]"] = {
            ":Lspsaga diagnostic_jump_next <cr>", "LSP Next Diagnostic", opts = { silent = true }
        },

        ["<leader>gf"] = {
            function()
                vim.lsp.buf.format { async = true }
            end,
            "LSP Format"
        }
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

return M
