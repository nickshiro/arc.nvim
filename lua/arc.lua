local M = {};

local colors = {
    white = "#D0D7E4",
    red = "#ff738a",
    orange = "#ff955c",
    yellow = "#eaCD61",
    purple = "#f38cec",
    blue = "#69c3ff",
    violet = "#b78aff",
    light_green = "#89bf58",
    green = "#3cec85",
    gray = "#646C7A",
    turquoise = "#22ecdb"
}

local groups = {
    background = {
        primary = "#1C2433",
        secondary = "#181F2C"
    },
    git = {
        add = colors.green,
        delete = colors.red,
        ignore = colors.gray,
        merge = colors.yellow,
        modified = colors.yellow,
        untracked = colors.orange,
        rename = colors.orange,
        unstaged = colors.yellow,
    }
}

local highlights = {
    ["Constant"] = { fg = colors.orange },
    ["Boolean"] = { fg = colors.orange },
    ["Number"] = { fg = colors.orange },
    ["Float"] = { fg = colors.orange },

    ["Keyword"] = { fg = colors.yellow },
    ["@keyword.function"] = { fg = colors.turquoise },

    ["Function"] = { fg = colors.blue },
    ["@constructor"] = { fg = colors.blue },

    ["@variable"] = { fg = colors.red },
    ["@variable.builtin"] = { fg = colors.orange },
    ["@variable.parameter"] = { fg = colors.purple },
    ["@lsp.typemode.variable"] = { fg = colors.red },

    ["@method"] = { fg = colors.blue },
    ["@string"] = { fg = colors.green },
    ["@constant"] = { fg = colors.light_green },
    ["@constant.builtin"] = { fg = colors.orange },

    ["Type"] = { fg = colors.violet },
    ["@type.builtin"] = { fg = colors.violet },
    ["@lsp.type.namespace"] = { fg = colors.blue },
    ["@lsp.type.property"] = { fg = colors.white },

    ["Operator"] = { fg = colors.yellow },
    ["@punctuation"] = { fg = colors.gray },
    ["@punctuation.special"] = { fg = colors.yellow },
    ["@punctuation.bracket"] = { fg = colors.gray },

    ["Delimiter"] = { fg = colors.gray },
    ["Special"] = { fg = colors.gray },

    ["Comment"] = { fg = colors.gray },



    ["Normal"]                      = { bg = groups.background.primary },
    ["NormalFloat"]                 = { bg = groups.background.secondary },
    ["Visual"]                      = { bg = "#3B465B" },
    ["FloatBorder"]                 = { bg = "#11161F" },
    ["WinSeparator"]                = { fg = "#11161F" },

    ["Pmenu"]                       = { bg = "#253043" },
    ["PmenuSel"]                    = { bg = "#2E3B54", fg = colors.yellow },
    ["PmenuMatch"]                  = { bg = "#2E3B54" },
    ["PmenuThumb"]                  = { bg = "#2D3546" },

    ["StatusLine"]                  = { bg = "#131822", fg = colors.white },
    ["Directory"]                   = { fg = colors.white },

    ["Search"]                      = { bg = "#343F52" },

    ["CursorLine"]                  = { bg = "#293344" },
    ["CursorColumn"]                = { bg = "#293344" },
    ["MatchParen"]                  = { bg = "#3F4B60" },

    ["LineNr"]                      = { fg = "#404A5F" },

    ["SpellBad"]                    = { sp = colors.red, undercurl = true },
    ["SpellCap"]                    = { sp = colors.yellow, undercurl = true },
    ["SpellLocal"]                  = { sp = colors.green, undercurl = true },
    ["SpellRare"]                   = { sp = colors.turquoise, undercurl = true },

    ["DiagnosticError"]             = { fg = colors.red },
    ["DiagnosticUnderlineError"]    = { sp = colors.red, undercurl = true },
    ["DiagnosticWarn"]              = { fg = colors.yellow },
    ["DiagnosticUnderlineWarn"]     = { sp = colors.yellow, undercurl = true },
    ["DiagnosticInfo"]              = { fg = colors.blue },
    ["DiagnosticUnderlineInfo"]     = { sp = colors.blue, undercurl = true },
    ["DiagnosticHint"]              = { fg = colors.blue },
    ["DiagnosticUnderlineHint"]     = { sp = colors.blue, undercurl = true },
    ["DiagnosticOk"]                = { fg = colors.green },
    ["DiagnosticUnderlineOk"]       = { sp = colors.green, undercurl = true },
    ["DiagnosticDefaultError"]      = { link = "DiagnosticError" },
    ["DiagnosticDefaultWarn"]       = { link = "DiagnosticWarn" },
    ["DiagnosticDefaultInfo"]       = { link = "DiagnosticInfo" },
    ["DiagnosticDefaultHint"]       = { link = "DiagnosticHint" },
    ["DiagnosticDefaultOk"]         = { link = "DiagnosticOk" },
    ["DiagnosticFloatingError"]     = { link = "DiagnosticError" },
    ["DiagnosticFloatingWarn"]      = { link = "DiagnosticWarn" },
    ["DiagnosticFloatingInfo"]      = { link = "DiagnosticInfo" },
    ["DiagnosticFloatingHint"]      = { link = "DiagnosticHint" },
    ["DiagnosticFloatingOk"]        = { link = "DiagnosticOk" },
    ["DiagnosticSignError"]         = { link = "DiagnosticError" },
    ["DiagnosticSignWarn"]          = { link = "DiagnosticWarn" },
    ["DiagnosticSignInfo"]          = { link = "DiagnosticInfo" },
    ["DiagnosticSignHint"]          = { link = "DiagnosticHint" },
    ["DiagnosticSignOk"]            = { link = "DiagnosticOk" },

    ["ErrorMsg"]                    = { fg = colors.red },

    ["DiffAdd"]                     = { bg = "#234142" },
    ["DiffDelete"]                  = { bg = "#322832" },
    ["DifChange"]                   = { bg = colors.gray },

    -- lukas-reineke/indent-blankline.nvim
    ["IblIndent"]                   = { fg = "#253043" },
    ["IblScope"]                    = { fg = "#415274" },

    -- nvim-neo-tree/neo-tree.nvim
    ["NeoTreeFileIcon"]             = { fg = "#8196B5" },
    ["NeoTreeFileName"]             = { fg = colors.white },
    ["NeoTreeGitAdded"]             = { fg = groups.git.add },
    ["NeoTreeGitConflict"]          = { fg = groups.git.merge },
    ["NeoTreeGitDeleted"]           = { fg = groups.git.delete },
    ["NeoTreeGitIgnored"]           = { fg = groups.git.ignore },
    ["NeoTreeGitModified"]          = { fg = groups.git.modified },
    ["NeoTreeGitRenamed"]           = { fg = groups.git.rename },
    ["NeoTreeGitUntracked"]         = { fg = groups.git.untracked },
    ["NeoTreeGitUnstaged"]          = { fg = groups.git.unstaged },
    ["NeoTreeTabSeparatorActive"]   = { link = "WinSeparator" },
    ["NeoTreeTabSeparatorInactive"] = { link = "WinSeparator" },
    ["NeoTreeTitleBar"]             = { link = "StatusLineTerm" },
    ["NeoTreeNormal"]               = { bg = groups.background.secondary },
    ["NeoTreeNormalNC"]             = { bg = groups.background.secondary },
}

function M.colorscheme()
    vim.g.colors_name = "arc"
    vim.cmd.highlight("clear")
    if vim.fn.has("syntax_on") then
        vim.cmd.syntax("reset")
    end

    for group, opts in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, opts)
    end
end

return M;
