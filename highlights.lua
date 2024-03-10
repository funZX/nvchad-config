-- To find any highlight groups: "<cmd> Telescope highlights"
-- Each highlight group can take a table with variables fg, bg, bold, italic, etc
-- base30 variable names can also be used as colors

local M = {}

---@type Base46HLGroupsList
M.override = {
    Comment = {
        italic = true,
    },
    Normal = {
        bg = "NONE"
    },
    TelescopeBorder = {
        fg = "#7aa2f7",
    },
    TelescopePreviewBorder = {
        fg = "#7aa2f7",
    },
    TelescopePromptBorder = {
        fg = "#7aa2f7",
    },
    TelescopeResultBorder = {
        fg = "#7aa2f7",
    },
}

---@type HLTable
M.add = {
    NvimTreeOpenedFolderName = { fg = "green", bold = true },
}

return M
