local M = {}

local highlights = require "custom.highlights"

M.ui = {
    theme = "tokyonight",

    hl_override = highlights.override,
    hl_add = highlights.add,
}

M.ui.extended_integrations = { "dap", "trouble" }

M.plugins = "custom.plugins"

M.mappings = require "custom.mappings"

return M

