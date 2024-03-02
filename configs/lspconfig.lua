local configs = require("plugins.configs.lspconfig")
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"
local servers = { "clangd", "pyright", "bashls", "html", "jsonls", "robotframework_ls", "tsserver" }

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = on_attach,
        capabilities = capabilities,
    }
end

local dap, dapui = require("dap"), require("dapui")

dap.listeners.before.attach.dapui_config = function()
    dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
    dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
    dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
    dapui.close()
end

vim.api.nvim_set_hl(0, "blue", { fg = "#3d59a1" })
vim.api.nvim_set_hl(0, "green", { fg = "#9ece6a" })
vim.api.nvim_set_hl(0, "yellow", { fg = "#FFFF00" })
vim.api.nvim_set_hl(0, "orange", { fg = "#f09000" })

vim.fn.sign_define('DapBreakpoint', { text = '•', texthl = 'blue', linehl = 'DapBreakpoint', numhl = 'DapBreakpoint' })
vim.fn.sign_define('DapBreakpointCondition', { text = '•', texthl = 'blue', linehl = 'DapBreakpoint', numhl ='DapBreakpoint' })
vim.fn.sign_define('DapBreakpointRejected', { text = '•', texthl = 'orange', linehl = 'DapBreakpoint', numhl ='DapBreakpoint' })
vim.fn.sign_define('DapStopped', { text = '•', texthl = 'green', linehl = 'DapBreakpoint', numhl = 'DapBreakpoint' })
vim.fn.sign_define('DapLogPoint', { text = '•', texthl = 'yellow', linehl = 'DapBreakpoint', numhl = 'DapBreakpoint' })
