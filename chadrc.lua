local M = {}

M.ui = { theme = 'tokyonight' }
M.ui.extended_integrations = { "dap", "trouble" }
M.plugins = "custom.plugins"

M.mappings = {

  dap = {
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
  },


  dapui = {
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
  },


  dap_python = {
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
  },


  trouble = {
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

      ["gR"] = {
        function()
          require("trouble").toggle("lsp_references")
        end,
        "Trouble LSP References",
      },
    },
  },
}

return M
